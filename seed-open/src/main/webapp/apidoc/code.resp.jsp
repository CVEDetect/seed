<%@ page pageEncoding="UTF-8"%>
<jsp:include page="/apidoc/header.jsp"/>
<h1>附录C：应答码</h1>
<table width="1300" border="0" cellspacing="1" bgcolor="#000000">
    <tr bgcolor="#8CB3E2">
        <th width="20%">应答码</th>
        <th width="80%" align="left">应答码描述</th>
    </tr>
    <tr bgcolor="#FFFFFF">
        <td align="center">0</td>
        <td>操作成功</td>
    </tr>
    <tr bgcolor="#FFFFFF">
        <td align="center">100</td>
        <td><del>暂未使用的保留域</del></td>
    </tr>
    <tr bgcolor="#FFFFFF">
        <td align="center">101</td>
        <td>系统繁忙</td>
    </tr>
    <tr bgcolor="#FFFFFF">
        <td align="center">102</td>
        <td>未知的合作方</td>
    </tr>
    <tr bgcolor="#FFFFFF">
        <td align="center">103</td>
        <td>未知的协议版本</td>
    </tr>
    <tr bgcolor="#FFFFFF">
        <td align="center">104</td>
        <td>未知的签名算法</td>
    </tr>
    <tr bgcolor="#FFFFFF">
        <td align="center">105</td>
        <td>未知的接口请求</td>
    </tr>
    <tr bgcolor="#FFFFFF">
        <td align="center">106</td>
        <td>时间戳异常</td>
    </tr>
    <tr bgcolor="#FFFFFF">
        <td align="center">107</td>
        <td>验签拒绝</td>
    </tr>
    <tr bgcolor="#FFFFFF">
        <td align="center">108</td>
        <td>解密失败</td>
    </tr>
    <tr bgcolor="#FFFFFF">
        <td align="center">109</td>
        <td>表单验证未通过</td>
    </tr>
    <tr bgcolor="#FFFFFF">
        <td align="center">110</td>
        <td>未授权的接口</td>
    </tr>
    <tr bgcolor="#FFFFFF">
        <td align="center">111</td>
        <td>未授权的数据访问</td>
    </tr>
    <tr bgcolor="#FFFFFF">
        <td align="center">201</td>
        <td>文件不存在</td>
    </tr>
    <tr bgcolor="#FFFFFF">
        <td align="center">202</td>
        <td>文件传输失败</td>
    </tr>
</table>
<jsp:include page="/apidoc/footer.jsp"/>