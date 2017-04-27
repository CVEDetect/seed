<%@ page pageEncoding="UTF-8"%>
<jsp:include page="/apidoc/header.jsp"/>
<h1>申请单提交.boot.loan.submit</h1>
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
                <td align="center">Y</td>
                <td>合作方申请单号</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>loanMoney</td>
                <td align="center">NUMBER(8)</td>
                <td align="center">N</td>
                <td>贷款金额，额度贷为选传，现金贷为必传，单位：分，允许10000--20000000分</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>loanTerm</td>
                <td align="center">NUMBER(2)</td>
                <td align="center">N</td>
                <td>贷款期数，额度贷为选传，现金贷为必传，目前可选值为3/6/9/12/15/18/24/36</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>loanPurpose</td>
                <td align="center">CHAR(4)</td>
                <td align="center">N</td>
                <td>贷款用途，额度贷为选传，现金贷为必传，可选值见数据字典</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>useLifeInsurance</td>
                <td align="center">CHAR(1)</td>
                <td align="center">N</td>
                <td>寿险计划，Y--参加，N--不参加，不传值则默认为N</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>productCode</td>
                <td align="center">NUMBER(4)</td>
                <td align="center">Y</td>
                <td>产品编码，具体值由合作业务约定</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>userName</td>
                <td align="center">VARCHAR2(16)</td>
                <td align="center">Y</td>
                <td>客户姓名</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>userPhone</td>
                <td align="center">NUMBER(11)</td>
                <td align="center">Y</td>
                <td>客户手机号</td>
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
                <td>银行卡号，值为14--19位数字</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>bankCode</td>
                <td align="center">CHAR(4)</td>
                <td align="center">Y</td>
                <td>银行行号，可选值见数据字典</td>
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
            <tr bgcolor="#FFFFFF">
                <td>liveProvinceCode</td>
                <td align="center">CHAR(6)</td>
                <td align="center">Y</td>
                <td>居住地省份编码，值为国家统计局最新县及县以上行政区划代码</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>liveCityCode</td>
                <td align="center">CHAR(6)</td>
                <td align="center">Y</td>
                <td>居住地城市编码，值为国家统计局最新县及县以上行政区划代码</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>liveTownCode</td>
                <td align="center">CHAR(6)</td>
                <td align="center">Y</td>
                <td>居住地区县编码，值为国家统计局最新县及县以上行政区划代码</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>liveDetailAddress</td>
                <td align="center">VARCHAR2(128)</td>
                <td align="center">Y</td>
                <td>居住地区详细地址</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>livePhone</td>
                <td align="center">VARCHAR2(14)</td>
                <td align="center">N</td>
                <td>住宅电话，格式为0451-12345678（区号最长5位，固话在个别地区为7位）</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>maritalStatus</td>
                <td align="center">CHAR(2)</td>
                <td align="center">Y</td>
                <td>婚姻状况，可选值见数据字典</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>email</td>
                <td align="center">VARCHAR2(64)</td>
                <td align="center">N</td>
                <td>常用电子邮件</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>education</td>
                <td align="center">CHAR(4)</td>
                <td align="center">N</td>
                <td>教育程度，可选值见数据字典</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>schoolAddress</td>
                <td align="center">VARCHAR2(64)</td>
                <td align="center">N</td>
                <td>学校地址</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>schoolName</td>
                <td align="center">VARCHAR2(64)</td>
                <td align="center">N</td>
                <td>学校名称，userIdentity=SI01时必传</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>schoolLength</td>
                <td align="center">NUMBER(1)</td>
                <td align="center">N</td>
                <td>学制，值为1--8的整数，userIdentity=SI01时必传</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>schoolEnterDate</td>
                <td align="center">CHAR(7)</td>
                <td align="center">N</td>
                <td>入学时间，格式为yyyy-MM，userIdentity=SI01时必传</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>unitEnterDate</td>
                <td align="center">CHAR(7)</td>
                <td align="center">N</td>
                <td>入职时间，格式为yyyy-MM，userIdentity=SI02/SI04时必传</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>unitStartDate</td>
                <td align="center">CHAR(7)</td>
                <td align="center">N</td>
                <td>参加工作时间，格式为yyyy-MM，userIdentity=SI02/SI04时必传</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>unitName</td>
                <td align="center">VARCHAR2(64)</td>
                <td align="center">N</td>
                <td>工作单位名称，userIdentity=SI02/SI04时必传</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>unitDepartment</td>
                <td align="center">VARCHAR2(16)</td>
                <td align="center">N</td>
                <td>工作单位任职部门</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>unitPosition</td>
                <td align="center">CHAR(1)</td>
                <td align="center">N</td>
                <td>工作单位现任职务，可选值见数据字典</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>unitPhone</td>
                <td align="center">VARCHAR2(14)</td>
                <td align="center">N</td>
                <td>工作单位电话号码，支持手机号或最长为14位的座机号，座机格式为0451-12345678</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>unitPhoneExt</td>
                <td align="center">NUMBER(5)</td>
                <td align="center">N</td>
                <td>工作单位分机号</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>unitProvinceCode</td>
                <td align="center">NUMBER(6)</td>
                <td align="center">N</td>
                <td>工作单位地址省份编码，值为国家统计局最新县及县以上行政区划代码，userIdentity=SI02/SI04时必传</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>unitCityCode</td>
                <td align="center">NUMBER(6)</td>
                <td align="center">N</td>
                <td>工作单位地址城市编码，值为国家统计局最新县及县以上行政区划代码，userIdentity=SI02/SI04时必传</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>unitTownCode</td>
                <td align="center">NUMBER(6)</td>
                <td align="center">N</td>
                <td>工作单位地址区县编码，值为国家统计局最新县及县以上行政区划代码，userIdentity=SI02/SI04时必传</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>unitDetailAddress</td>
                <td align="center">VARCHAR2(128)</td>
                <td align="center">N</td>
                <td>工作单位详细地址，userIdentity=SI02/SI04时必传</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>unitBusinessType</td>
                <td align="center">CHAR(1)</td>
                <td align="center">N</td>
                <td>工作单位企业类型，可选值见数据字典，userIdentity=SI02/SI04时必传</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>unitIndustry</td>
                <td align="center">CHAR(1)</td>
                <td align="center">N</td>
                <td>工作单位所属行业，可选值见数据字典</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>unitOccupation</td>
                <td align="center">VARCHAR2(2)</td>
                <td align="center">N</td>
                <td>工作内容从事职业，可选值见数据字典，userIdentity=SI02/SI04时必传</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>unitMonthIncome</td>
                <td align="center">NUMBER(8)</td>
                <td align="center">N</td>
                <td>工作月收入，单位：分，最多允许99999999分，userIdentity=SI02/SI04时必传</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>otherIncome</td>
                <td align="center">NUMBER(8)</td>
                <td align="center">N</td>
                <td>其它收入，单位：分，最多允许99999999分</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>otherLoan</td>
                <td align="center">NUMBER(8)</td>
                <td align="center">N</td>
                <td>其它贷款，单位：分，最多允许99999999分</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>userIdentity</td>
                <td align="center">CHAR(4)</td>
                <td align="center">Y</td>
                <td>客户社会身份，可选值见数据字典</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>userCredit</td>
                <td align="center">CHAR(1)</td>
                <td align="center">N</td>
                <td>客户信用记录，可选值见数据字典</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>userHousing</td>
                <td align="center">CHAR(1)</td>
                <td align="center">N</td>
                <td>客户居住状况，可选值见数据字典</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>userCarInfo</td>
                <td align="center">CHAR(1)</td>
                <td align="center">N</td>
                <td>客户车产情况，可选值见数据字典</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>warrantMode</td>
                <td align="center">CHAR(1)</td>
                <td align="center">N</td>
                <td>担保方式：0--未知，1--信用贷</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>financeOrganize</td>
                <td align="center">CHAR(1)</td>
                <td align="center">N</td>
                <td>金融机构：0--未知，1--消费金融公司</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>fileList</td>
                <td align="center">JSONObject</td>
                <td align="center">N</td>
                <td>
                    申请单文件JSON对象，结构如下，其中文件类别fileCategory可选值见附录B<br/>
                    [<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;{&quot;fileId&quot;: &quot;33&quot;, &quot;fileCategory&quot;: &quot;Y&quot;},<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;{&quot;fileId&quot;: &quot;66&quot;, &quot;fileCategory&quot;: &quot;R&quot;}<br/>
                    ]
                </td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>contactList</td>
                <td align="center">JSONObject</td>
                <td align="center">Y</td>
                <td>
                    联系人信息JSON对象，结构如下，其中联系人关系relation可选值见附录B（最多五个）<br/>
                    [<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;{&quot;name&quot;:&quot;铁面生&quot;,&quot;relation&quot;:&quot;R004&quot;,&quot;phoneNo&quot;:&quot;13600006666&quot;,&quot;address&quot;:&quot;哈尔滨&quot;},<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;{&quot;name&quot;:&quot;汪藏海&quot;,&quot;relation&quot;:&quot;R002&quot;,&quot;phoneNo&quot;:&quot;15800008888&quot;,&quot;address&quot;:&quot;重庆&quot;}<br/>
                    ]
                </td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>addonsList</td>
                <td align="center">JSONObject</td>
                <td align="center">N</td>
                <td>
                    附加信息JSON对象，结构如下，其中类型type可选值见附录B社交账号（但不限于）<br/>
                    [<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;{&quot;type&quot;: &quot;job&quot;, &quot;value&quot;: &quot;architect&quot;},<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;{&quot;type&quot;: &quot;language&quot;, &quot;value&quot;: &quot;java&quot;}<br/>
                    ]
                </td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>clientType</td>
                <td align="center">VARCHAR2(32)</td>
                <td align="center">Y</td>
                <td>客户端类型，可选值：IOS、Android、WeChat、PCBrowser、MobileBrowser</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>clientVersion</td>
                <td align="center">VARCHAR2(64)</td>
                <td align="center">N</td>
                <td>客户端版本号，clientType=IOS或Android时传系统版本号，其余传浏览器版本号</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>clientChannel</td>
                <td align="center">VARCHAR2(64)</td>
                <td align="center">N</td>
                <td>客户端发行渠道，即客户端获取来源，比如appstore</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>clientInVersion</td>
                <td align="center">VARCHAR2(64)</td>
                <td align="center">N</td>
                <td>客户端内部版本号，clientType=IOS或Android时传App的，其余传浏览器版本号即可</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>clientCompany</td>
                <td align="center">VARCHAR2(64)</td>
                <td align="center">N</td>
                <td>客户端制造商，clientType=IOS或Android时传手机制造商，其余传浏览器名即可</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>clientTradeMark</td>
                <td align="center">VARCHAR2(64)</td>
                <td align="center">N</td>
                <td>客户端品牌，clientType=IOS或Android时传手机牌子，其余传浏览器名即可</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>clientModels</td>
                <td align="center">VARCHAR2(64)</td>
                <td align="center">N</td>
                <td>客户端型号，clientType=IOS或Android时传手机型号，其余传浏览器版本号即可</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>clientCompileId</td>
                <td align="center">VARCHAR2(64)</td>
                <td align="center">N</td>
                <td>客户端编译ID，clientType=IOS或Android时传App编译ID，其余传浏览器版本号即可</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>clientIMEI</td>
                <td align="center">VARCHAR2(64)</td>
                <td align="center">N</td>
                <td>客户端IMEI</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>clientGPS</td>
                <td align="center">VARCHAR2(32)</td>
                <td align="center">N</td>
                <td>客户端GPS(lat,lng)</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>clientNetwork</td>
                <td align="center">NUMBER(1)</td>
                <td align="center">N</td>
                <td>客户端网络，可选值：0--无，1--WIFI，2--2G，3--3G，4--4G，5--5G，9--其它</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>notifyUrl</td>
                <td align="center">VARCHAR2(512)</td>
                <td align="center">N</td>
                <td>后台通知URL，通知参数同3.1章节请求参数，该参数暂时不完全生效，可不传</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>state</td>
                <td align="center">VARCHAR2(512)</td>
                <td align="center">N</td>
                <td>申请单查询或前后台通知时原封不动返回给合作方，该参数暂时不完全生效，可不传</td>
            </tr>
        </table>
        <br/>
        <table width="1260" border="0" cellspacing="1" bgcolor="#000000">
            <tr bgcolor="#FFFFFF">
                <td>
                    {<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&quot;userIdCard&quot;:&quot;232126201602231608&quot;,<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&quot;fileList&quot;:[<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;fileId&quot;:&quot;33&quot;,<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;fileCategory&quot;:&quot;Y&quot;<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;fileId&quot;:&quot;66&quot;,<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;fileCategory&quot;:&quot;L&quot;<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;],<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&quot;userBankCardNo&quot;:&quot;6226660901610000&quot;,<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&quot;partnerApplyNo&quot;:&quot;56478750&quot;,<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&quot;loanMoney&quot;:&quot;600000&quot;,<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&quot;userName&quot;:&quot;玉藏石&quot;,<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&quot;userPhone&quot;:&quot;18800008888&quot;,<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&quot;loanTerm&quot;:&quot;12个月&quot;,<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&quot;clientType&quot;:&quot;PCBrowser&quot;,<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&quot;clientVersion&quot;:&quot;Chrome 46.0.2490.86 m (64-bit)&quot;,<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&quot;clientNetwork&quot;:&quot;1&quot;<br/>
                    }
                </td>
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
                <td>applyNo</td>
                <td align="center">VARCHAR2(32)</td>
                <td align="center">Y</td>
                <td>开放平台申请单号</td>
            </tr>
            <tr bgcolor="#FFFFFF">
                <td>contractNo</td>
                <td align="center">VARCHAR2(32)</td>
                <td align="center">N</td>
                <td>开放平台合同号</td>
            </tr>
        </table>
        <br/>
        <table width="1260" border="0" cellspacing="1" bgcolor="#000000">
            <tr bgcolor="#FFFFFF">
                <td>
                    {<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&quot;code&quot;: &quot;0&quot;,<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&quot;msg&quot;: &quot;操作成功&quot;,<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&quot;data&quot;: {<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&quot;applyNo&quot;: &quot;2016022316140001&quot;<br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;}<br/>
                    }
                </td>
            </tr>
        </table>
    </li>
</ol>
<jsp:include page="/apidoc/footer.jsp"/>