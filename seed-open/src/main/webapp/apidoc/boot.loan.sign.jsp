<%@ page pageEncoding="UTF-8"%>
<jsp:include page="/apidoc/header.jsp"/>
<h1>申请单签约.boot.loan.sign</h1>
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
				<td>applyNo</td>
				<td align="center">VARCHAR2(32)</td>
				<td align="center">Y</td>
				<td>开放平台申请单号</td>
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
				<td>contractNo</td>
				<td align="center">VARCHAR2(32)</td>
				<td align="center">Y</td>
				<td>开放平台合同号</td>
			</tr>
		</table>
	</li>
</ol>
<jsp:include page="/apidoc/footer.jsp"/>