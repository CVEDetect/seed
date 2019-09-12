package com.jadyer.seed.controller.batch.xmlconfig;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.batch.item.ExecutionContext;
import org.springframework.batch.item.ItemStreamException;
import org.springframework.batch.item.ParseException;
import org.springframework.batch.item.ResourceAware;
import org.springframework.batch.item.UnexpectedInputException;
import org.springframework.batch.item.file.ResourceAwareItemReaderItemStream;
import org.springframework.batch.item.support.AbstractItemStreamItemReader;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.lang.Nullable;
import org.springframework.util.Assert;
import org.springframework.util.ClassUtils;

import java.io.IOException;
import java.util.Arrays;
import java.util.Comparator;

/**
 * 之前的默认实现：应用启动后，资源文件目录新增的文件，是无法被读取到的
 * 此类的新增实现：可以读到新增文件
 * --------------------------------------------------------------------------------------------------------------------
 * Created by 玄玉<https://jadyer.cn/> on 2019/9/12 18:50.
 * --------------------------------------------------------------------------------------------------------------------
 * Reads items from multiple resources sequentially - resource list is given by {@link #setResources(Resource[])}, the
 * actual reading is delegated to {@link #setDelegate(ResourceAwareItemReaderItemStream)}.
 *
 * Input resources are ordered using {@link #setComparator(Comparator)} to make sure resource ordering is preserved
 * between job runs in restart scenario.
 *
 *
 * @author Robert Kasanicky
 * @author Lucas Ward
 * @author Mahmoud Ben Hassine
 */
public class SeedMultiResourceItemReader<T> extends AbstractItemStreamItemReader<T> {

    private static final Log logger = LogFactory.getLog(SeedMultiResourceItemReader.class);

    private static final String RESOURCE_KEY = "resourceIndex";

    private ResourceAwareItemReaderItemStream<? extends T> delegate;

    private Resource[] resources;

    private boolean saveState = true;

    private int currentResource = -1;

    // signals there are no resources to read -> just return null on first read
    private boolean noInput;

    //新增：资源路径通配符
    private String resourcesLocationPattern;

    private boolean strict = false;

    /**
     * In strict mode the reader will throw an exception on
     * {@link #open(org.springframework.batch.item.ExecutionContext)} if there are no resources to read.
     * @param strict false by default
     */
    public void setStrict(boolean strict) {
        this.strict = strict;
    }

    private Comparator<Resource> comparator = new Comparator<Resource>() {

        /**
         * Compares resource filenames.
         */
        @Override
        public int compare(Resource r1, Resource r2) {
            return r1.getFilename().compareTo(r2.getFilename());
        }

    };

    public SeedMultiResourceItemReader() {
        this.setExecutionContextName(ClassUtils.getShortName(SeedMultiResourceItemReader.class));
    }

    /**
     * Reads the next item, jumping to next resource if necessary.
     */
    @Override
    public T read() throws Exception, UnexpectedInputException, ParseException {

        if (noInput) {
            return null;
        }

        // If there is no resource, then this is the first item, set the current
        // resource to 0 and open the first delegate.
        if (currentResource == -1) {
            currentResource = 0;
            delegate.setResource(resources[currentResource]);
            delegate.open(new ExecutionContext());
        }

        return readNextItem();
    }

    /**
     * Use the delegate to read the next item, jump to next resource if current one is exhausted. Items are appended to
     * the buffer.
     *
     * @return next item from input
     */
    private T readNextItem() throws Exception {

        T item = readFromDelegate();

        while (item == null) {

            currentResource++;

            if (currentResource >= resources.length) {
                return null;
            }

            delegate.close();
            delegate.setResource(resources[currentResource]);
            delegate.open(new ExecutionContext());

            item = readFromDelegate();
        }

        return item;
    }

    private T readFromDelegate() throws Exception {
        T item = delegate.read();
        if(item instanceof ResourceAware){
            ((ResourceAware) item).setResource(getCurrentResource());
        }
        return item;
    }

    /**
     * Close the {@link #setDelegate(ResourceAwareItemReaderItemStream)} reader and reset instance variable values.
     */
    @Override
    public void close() throws ItemStreamException {
        super.close();

        if(!this.noInput) {
            delegate.close();
        }

        noInput = false;
    }

    public String getResourcesLocationPattern() {
        return resourcesLocationPattern;
    }

    public void setResourcesLocationPattern(String resourcesLocationPattern) {
        this.resourcesLocationPattern = resourcesLocationPattern;
    }

    /**
     * Figure out which resource to start with in case of restart, open the delegate and restore delegate's position in
     * the resource.
     */
    @Override
    public void open(ExecutionContext executionContext) throws ItemStreamException {
        super.open(executionContext);
        Assert.notNull(resourcesLocationPattern, "ResourcesLocationPattern must be set");

        PathMatchingResourcePatternResolver patternResolver = new PathMatchingResourcePatternResolver();
        try {
            //动态读取资源列表
            resources = patternResolver.getResources(resourcesLocationPattern);
        } catch (IOException e) {
            e.printStackTrace();
        }

        noInput = false;
        if (resources.length == 0) {
            if (strict) {
                throw new IllegalStateException(
                        "No resources to read. Set strict=false if this is not an error condition.");
            }
            else {
                logger.warn("No resources to read. Set strict=true if this should be an error condition.");
                noInput = true;
                return;
            }
        }

        Arrays.sort(resources, comparator);

        if (executionContext.containsKey(getExecutionContextKey(RESOURCE_KEY))) {
            currentResource = executionContext.getInt(getExecutionContextKey(RESOURCE_KEY));

            // context could have been saved before reading anything
            if (currentResource == -1) {
                currentResource = 0;
            }

            delegate.setResource(resources[currentResource]);
            delegate.open(executionContext);
        }
        else {
            currentResource = -1;
        }
    }

    /**
     * Store the current resource index and position in the resource.
     */
    @Override
    public void update(ExecutionContext executionContext) throws ItemStreamException {
        super.update(executionContext);
        if (saveState) {
            executionContext.putInt(getExecutionContextKey(RESOURCE_KEY), currentResource);
            delegate.update(executionContext);
        }
    }

    /**
     * @param delegate reads items from single {@link Resource}.
     */
    public void setDelegate(ResourceAwareItemReaderItemStream<? extends T> delegate) {
        this.delegate = delegate;
    }

    /**
     * Set the boolean indicating whether or not state should be saved in the provided {@link ExecutionContext} during
     * the {@link ItemStream} call to update.
     *
     * @param saveState true to update ExecutionContext. False do not update
     * ExecutionContext.
     */
    public void setSaveState(boolean saveState) {
        this.saveState = saveState;
    }

    /**
     * @param comparator used to order the injected resources, by default compares {@link Resource#getFilename()}
     * values.
     */
    public void setComparator(Comparator<Resource> comparator) {
        this.comparator = comparator;
    }

    /**
     * @param resources input resources
     */
    public void setResources(Resource[] resources) {
        Assert.notNull(resources, "The resources must not be null");
        this.resources = Arrays.asList(resources).toArray(new Resource[resources.length]);
    }

    /**
     * Getter for the current resource.
     * @return the current resource or {@code null} if all resources have been
     * processed or the first resource has not been assigned yet.
     */
    @Nullable
    public Resource getCurrentResource() {
        if (currentResource >= resources.length || currentResource < 0) {
            return null;
        }
        return resources[currentResource];
    }

}
