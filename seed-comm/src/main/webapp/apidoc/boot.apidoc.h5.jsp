<%@ page pageEncoding="UTF-8"%>
<jsp:include page="/apidoc/header.jsp"/>
<h1>接口文档页.boot.apidoc.h5</h1>
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
				<td>method</td>
				<td align="center">VARCHAR2(32)</td>
				<td align="center">N</td>
				<td>访问的接口名称</td>
			</tr>
		</table>
	</li>
	<li>
		<h2>响应页面</h2>
		该接口调用方式类似boot.file.upload接口一样表单提交，在收到请求后会跳转至对应的接口文档页面。
	</li>
</ol>
<jsp:include page="/apidoc/footer.jsp"/>