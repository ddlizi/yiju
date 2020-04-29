<%--
  Created by IntelliJ IDEA.
  User: 36353
  Date: 2019-07-05
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>实名认证</title>
    <%--导入CSS文件--%>
    <link type="text/css" href="../css/css.css" rel="stylesheet" />
    <%--<script src="../js/jquery-2.1.1.min.js"></script>--%>


</head>
<body>
<%--加入头部--%>
<jsp:include page="../pages/basehead.jsp"></jsp:include>
<!--Logo栏和手机号栏-->
<div class="logo-phone">
    <div class="width1190">

        <table align="center" width="100%">
            <tr>
                <td>
                    <h1 class="logo"><a href="../index.jsp"><img src="../images/logo.png" width="163" height="59" /></a></h1>
                </td>
                <td align="center">
                    <div class="phones"><strong>000-00000000</strong></div>
                    <div class="clears"></div>
                </td>
            </tr>
        </table>
    </div><!--width1190/-->
</div><!--logo-phone/-->
<!--Logo栏和手机号栏 END-->

<hr width="1190px">
<br>

<div class="content">
    <div class="width1080">
        <%--左侧导航栏--%>
        <div class="vip-left">
            <div class="vipNav">
                <h3 class="vipTitle">账户中心</h3>
                <dl>
                    <dt class="vipIcon3">账户设置</dt>
                    <dd>
                        <a href="" >我的资料</a>
                        <a href="" class="vipNavCur">实名认证</a>
                        <a href="">账户密码设置</a>
                    </dd>
                    <dt class="vipIcon1">我的易居</dt>
                    <dd>
                        <a href="#">我的收藏房源</a>
                    </dd>
                </dl>
            </div><!--vipNav/-->
        </div><!--vip-left/-->

        <%--右侧详情栏--%>
        <div class="vip-right">
            <h3 class="vipright-title">我的认证</h3>


            <table class="grinfo">
                <tbody>
                <tr>
                    <th ><span class="red">*</span>真 实 姓 名：</th>
                    <td width="600px">
                        <input class="inp inw" type="text" id="name" value="" name="truename" maxlength="14" disabled="disabled" >
                    </td>
                </tr>
                <tr>
                    <th height="40px"><span class="red">*</span>性　　　别：</th>
                    <td height="40px">
                        <input type="radio" value="0" id="rbSex1" name="sex"   disabled="disabled">
                        <label for="rbSex1">男　　　　　　　　</label>
                        <input type="radio" value="1" id="rbSex2" name="sex"   disabled="disabled" disabled="disabled">
                        <label for="rbSex2">女</label>
                        <span id="Sex_Tip"></span>
                    </td>
                </tr>

                <tr>
                    <th><span class="red">*</span>身份证号码：</th>
                    <td>
                        <input class="inp inw" type="text" id="card" value="" name="card" maxlength="14">
                    </td>
                </tr>

                <tr>
                    <th><span class="red">*</span>身份证地址：</th>
                    <td>
                        <input class="inp inw" type="text" id="address" value="" name="cardaddress" maxlength="14">
                    </td>
                </tr>

                <tr>
                    <th><span class="red">*</span>现居住住址：</th>
                    <td>
                        <input class="inp inw" type="text" id="nowaddress" value="" name="liveaddress" maxlength="14">
                    </td>
                </tr>

                <tr>
                    <th>&nbsp;</th>
                    <td colspan="2">
                        <label class="butt" id="butt">
                            <input type="button" class="member_mod_buttom" onclick="" value="申请认证" />
                        </label>
                    </td>
                </tr>
                </tbody>
            </table>
        </div><!--vip-right/-->
        <div class="clearfix"></div>
    </div><!--width1190/-->
</div><!--content/-->

<script src="../js/city/jquery1.8.1.js" type="text/javascript"></script>

<!--End  个人信息填写栏-->
<div class="width1190">
    <br>
    <br>
    <br>
    <br>
</div>

<jsp:include page="basefoot.jsp"></jsp:include>

</body>

</html>
