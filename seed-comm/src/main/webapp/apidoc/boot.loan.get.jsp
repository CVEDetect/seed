<%@ page pageEncoding="UTF-8"%>
<jsp:include page="/apidoc/header.jsp"/>
<h1>申请单查询.boot.loan.get</h1>
<ol type="1">
	<li>
		<h2>请求报文</h2>
		<table width="1260" border="0" cellspacing="1" bgcolor="#000000">
			<tr bgcolor="#8CB3E2">
				<th width="20%">名称</th>
				<th width="10%" align="center">类型</th>
				<th width="5%" align="center">必传</th>
				<th width="65%">说明</th>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td>partnerApplyNo</td>
				<td align="center">VARCHAR2(32)</td>
				<td align="center">N</td>
				<td>合作方申请单号</td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td>applyNo</td>
				<td align="center">VARCHAR2(32)</td>
				<td align="center">N</td>
				<td>开放平台申请单号，该参数与partnerApplyNo二者至少传一个，同时传则以该参数为准</td>
			</tr>
		</table>
	</li>
	<li>
		<h2>响应报文</h2>
		<table width="1260" border="0" cellspacing="1" bgcolor="#000000">
			<tr bgcolor="#8CB3E2">
				<th width="20%">名称</th>
				<th width="10%" align="center">类型</th>
				<th width="5%" align="center">必传</th>
				<th width="65%">说明</th>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td>partnerApplyNo</td>
				<td align="center">VARCHAR2(32)</td>
				<td align="center">Y</td>
				<td>合作方申请单号</td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td>applyNo</td>
				<td align="center">VARCHAR2(32)</td>
				<td align="center">Y</td>
				<td>开放平台申请单号</td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td>applyStatus</td>
				<td align="center">CHAR(1)</td>
				<td align="center">Y</td>
				<td>申请单状态，状态值见附录A</td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td>applyTime</td>
				<td align="center">DATE</td>
				<td align="center">Y</td>
				<td>申请时间，格式为yyyy-MM-dd HH:mm:ss</td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td>approveTime</td>
				<td align="center">DATE</td>
				<td align="center">N</td>
				<td>审批时间，格式为yyyy-MM-dd HH:mm:ss<span style="color:green;">，该参数暂不完全支持</span></td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td>approveRemark</td>
				<td align="center">VARCHAR2(64)</td>
				<td align="center">N</td>
				<td>审批备注<span style="color:green;">，该参数暂不完全支持</span></td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td>loanTerm</td>
				<td align="center">NUMBER(2)</td>
				<td align="center">Y</td>
				<td>贷款申请期数</td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td>loanMoney</td>
				<td align="center">NUMBER(8)</td>
				<td align="center">Y</td>
				<td>贷款申请金额，单位：分</td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td>creditMoney</td>
				<td align="center">NUMBER(8)</td>
				<td align="center">Y</td>
				<td>贷款授信金额，单位：分</td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td>creditTerm</td>
				<td align="center">NUMBER(2)</td>
				<td align="center">Y</td>
				<td>贷款授信期数</td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td>userName</td>
				<td align="center">VARCHAR2(16)</td>
				<td align="center">Y</td>
				<td>客户姓名</td>
			</tr>
			<tr bgcolor="#FFFFFF">
				<td>userPhone</td>
				<td align="center">CHAR(11)</td>
				<td align="center">Y</td>
				<td>客户手机号</td>
			</tr>
		</table>
	</li>
</ol>
<jsp:include page="/apidoc/footer.jsp"/>