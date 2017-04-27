package com.jadyer.seed.mpp.sdk.qq.model;

/**
 * 封装粉丝基本信息
 * @see <<QQ公众号API文档.pdf>>-20150907版中没有写返回openid,但在20151128222421时测试发现会返回openid
 * @create Nov 28, 2015 8:45:49 PM
 * @author 玄玉<https://jadyer.github.io/>
 */
public class QQFansInfo {
    private int subscribe;         //用户是否订阅该公众号标识,值为0时,代表此用户没有关注该公众号,拉取不到其余信息
    private String openid;         //用户的标识,对当前公众号唯一
    private String nickname;       //用户的昵称
    private int sex;               //用户的性别,1--男性,2--女性,0--未知
    private String city;           //用户所在城市
    private String country;        //用户所在国家
    private String province;       //用户所在省份
    private String language;       //用户的语言,简体中文为zh_CN
    private String headimgurl;     //用户头像,最后一个数值代表正方形头像大小(有0/46/64/96/132数值可选,0代表640*640正方形头像),用户没有头像时该项为空..若用户更换头像,原有头像URL将失效
    private String subscribe_time; //用户关注时间,为时间戳..如果用户曾多次关注,则取最后关注时间
    private String unionid;        //只有在用户将公众号绑定到微信开放平台帐号后,才会出现该字段..详见: 获取用户个人信息(UnionID机制)
    private String remark;         //公众号运营者对粉丝的备注,公众号运营者可在微信公众平台用户管理界面对粉丝添加备注
    private String groupid;        //用户所在的分组ID

    public int getSubscribe() {
        return subscribe;
    }
    public void setSubscribe(int subscribe) {
        this.subscribe = subscribe;
    }
    public String getOpenid() {
        return openid;
    }
    public void setOpenid(String openid) {
        this.openid = openid;
    }
    public String getNickname() {
        return nickname;
    }
    public void setNickname(String nickname) {
        this.nickname = nickname;
    }
    public int getSex() {
        return sex;
    }
    public void setSex(int sex) {
        this.sex = sex;
    }
    public String getCity() {
        return city;
    }
    public void setCity(String city) {
        this.city = city;
    }
    public String getCountry() {
        return country;
    }
    public void setCountry(String country) {
        this.country = country;
    }
    public String getProvince() {
        return province;
    }
    public void setProvince(String province) {
        this.province = province;
    }
    public String getLanguage() {
        return language;
    }
    public void setLanguage(String language) {
        this.language = language;
    }
    public String getHeadimgurl() {
        return headimgurl;
    }
    public void setHeadimgurl(String headimgurl) {
        this.headimgurl = headimgurl;
    }
    public String getSubscribe_time() {
        return subscribe_time;
    }
    public void setSubscribe_time(String subscribe_time) {
        this.subscribe_time = subscribe_time;
    }
    public String getUnionid() {
        return unionid;
    }
    public void setUnionid(String unionid) {
        this.unionid = unionid;
    }
    public String getRemark() {
        return remark;
    }
    public void setRemark(String remark) {
        this.remark = remark;
    }
    public String getGroupid() {
        return groupid;
    }
    public void setGroupid(String groupid) {
        this.groupid = groupid;
    }
}