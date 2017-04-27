<%@ page pageEncoding="UTF-8"%>
<jsp:include page="/apidoc/header.jsp"/>
<h1>绑定银行卡.boot.user.bindcard</h1>
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
                <td>userName</td>
                <td align="center">VARCHAR2(16)</td>
                <td align="center">Y</td>
                <td>客户姓名</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>userIdCard</td>
                <td align="center">VARCHAR2(18)</td>
                <td align="center">Y</td>
                <td>客户身份证号，15位或18位</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>bankCardNo</td>
                <td align="center">VARCHAR2(19)</td>
                <td align="center">Y</td>
                <td>银行卡号，值为14--19位数字，目前仅允许借记卡</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>bankProvinceCode</td>
                <td align="center">CHAR(6)</td>
                <td align="center">Y</td>
                <td>银行分行省份编码，值为国家统计局最新县及县以上行政区划代码</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>bankCityCode</td>
                <td align="center">CHAR(6)</td>
                <td align="center">Y</td>
                <td>银行分行城市编码，值为国家统计局最新县及县以上行政区划代码</td>
            </tr>
        </table>
    </li>
    <li>
        <h2>响应报文</h2>
        见公共应答报文结构，code=0表示绑定成功。
    </li>
</ol>
<jsp:include page="/apidoc/footer.jsp"/>