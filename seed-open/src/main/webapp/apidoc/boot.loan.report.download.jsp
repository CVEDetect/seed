<%@ page pageEncoding="UTF-8"%>
<jsp:include page="/apidoc/header.jsp"/>
<h1>申请单报表下载.boot.loan.report.download</h1>
<ol type="1">
	<li>
		<h2>请求报文</h2>
		报表规则：T+1，最晚每天07:00返回前一天数据，即07:00前可能查不到结果（尽管可能性不大）取决于系统跑批<br/>
        报表例一：比如10号来下载，系统先查询上月09号00:00到本月09号23:59（暂定30天）所有预审通过的单子<br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;再通过得到的这些单子的客户唯一标识，来查询所有的本月09号放款成功的单子，查询到的就是报表内容<br/>
        报表例二：比如10号来下载，系统先查询09号当天放款成功的单子AA，然后找到AA单子的客户信息<br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;再查找该客户预审通过的单子BB，若没有找到BB单子，则AA单子的信息不会在报表中生成<br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;若找到BB单子，且BB预审通过的时间与AA放款成功的时间间隔不超过30天(暂定30天)<br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;则AA单子的信息会在报表中生成<br/><br/>
		<table width="1260" border="0" cellspacing="1" bgcolor="#000000">
			<tr bgcolor="#8CB3E2">
				<th width="20%">名称</th>
				<th width="10%" align="center">类型</th>
				<th width="5%" align="center">必传</th>
				<th width="65%">说明</th>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td>reportType</td>
				<td align="center">CHAR(1)</td>
				<td align="center">Y</td>
				<td>下载报表类型：0--所有，1--昨天放款成功的（目前只支持1），2--昨天扣款失败的</td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td>reportSignType</td>
				<td align="center">VARCHAR(4)</td>
				<td align="center">Y</td>
				<td>文件内容签名的摘要算法：小写的hmac，小写的md5，传0则不签名（目前只支持0）</td>
			</tr>
		</table>
	</li>
	<li>
		<h2>响应报文</h2>
		报表内容以文本表格的方式返回，第一行为表头，后面各行为对应的字段内容<br/>
        成功返回报表时，每笔记录一行，除最后一行外，每行以<font color="red" size=3><b>\n</b></font>结束，否则返回公共应答报文格式的JSON<br/>
        当报表不需签名，即入参reportSignType=0时，则第一行起即为数据行，数据格式及样例见下方表头定义<br/>
        当报表需签名，即入参reportSignType!=0时，则第一行为签名字符串(规则见第一章签名机制)，第二行起为数据行<br/>
        表头定义：<br/>
        <ul type="disc">
            <li>reportType=0时的表头格式：暂不支持</li>
            <li>
                reportType=1时的表头格式，各参数以<font color="red" size=4><b>`</b></font>(0x60,即标准键盘<font size=3><b>1</b></font>左边键的字符)分隔<br/>
                <font color="blue">合作方流水<font color="red" size=3><b>`</b></font>姓名<font color="red" size=3><b>`</b></font>身份证号<font color="red" size=3><b>`</b></font>申请金额(分)<font color="red" size=3><b>`</b></font>申请期数<font color="red" size=3><b>`</b></font>预审结果<font color="red" size=3><b>`</b></font>预审完成时间<font color="red" size=3><b>`</b></font>授信金额(分)<font color="red" size=3><b>`</b></font>授信期数<font color="red" size=3><b>`</b></font>终审结果<font color="red" size=3><b>`</b></font>终审完成时间</font><br/>
                举例：<font color="blue">20151210111055`玄玉`2321262015121011113636`800000`12`A`20151209232425`600000`12`A`20151210102030</font>
            </li>
            <li>reportType=2时的表头格式：暂不支持</li>
        </ul>
	</li>
</ol>
<jsp:include page="/apidoc/footer.jsp"/>