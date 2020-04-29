<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link type="text/css" href="../css/css.css" rel="stylesheet"/>

</head>
<body>
<%--加入头部--%>
<jsp:include page="basehead.jsp"></jsp:include>

<!--Logo栏和手机号栏-->
<div class="logo-phone">
    <div class="width1190">

        <table align="center" width="100%">
            <tr>
                <td>
                    <h1 class="logo"><a href="../index.jsp"><img src="../images/logo.png" width="163" height="59"/></a>
                    </h1>
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
                        <a href="">我的收藏房源</a>
                    </dd>
                </dl>
            </div><!--vipNav/-->
        </div><!--vip-left/-->

        <%--右侧详情栏--%>
        <div class="vip-right">
            <h3 class="vipright-title">我的认证</h3>

            <c:if test="${userAuth == null}">
            <br>
            <br>
            <br>
            <br>
            <br>
            <p align="center" style="font-size: 17px;color: #FF0000">您尚未提交实名认证！</p>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div align="center">
                <label class="butt" id="butt">
                    <input type="button" class="member_mod_buttom" onclick="" value="立即申请"/>
                </label>
            </div>
            </c:if>

            <c:if test="${userAuth.authStatus == 0}">
            <br>
            <br>
            <br>
            <br>
            <br>
            <p align="center" style="font-size: 17px;color: #1550ff">您提交的认证申请审核中！</p>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            </c:if>
            <c:if test="${userAuth.authStatus == 1}">
            <br>
            <br>
            <br>
            <br>
            <br>
            <p align="center" style="font-size: 17px;color: #FF0000">您的认证申请已被拒绝，请核实信息！</p>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div align="center">
                <label class="butt" id="butt3">
                    <input type="button" class="member_mod_buttom" onclick=""
                           value="立即申请"/>
                </label>
            </div>
            </c:if>

            <c:if test="${userAuth.authStatus == 2}">
            <br>
            <br>
            <br>
            <br>
            <br>
            <p align="center" style="font-size: 17px;color: #0aff35">您已经实名认证成功！</p>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div align="center">
                <label class="butt" id="butt2">
                    <input type="button" class="member_mod_buttom2" onclick="" value="删除认证"/>
                </label>
            </div>
            </c:if>


        </div><!--vip-right/-->
        <div class="clearfix"></div>
    </div><!--width1190/-->
</div><!--content/-->
<!--End  个人信息填写栏-->
<div class="width1190">
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
</div>

<jsp:include page="basefoot.jsp"></jsp:include>

</body>
<script type="text/javascript">

</script>
<%--<script type="text/javascript">
    $(function () {
        $(".member_mod_buttom2").on("click",function () {
            alert("111");
          /*  $.ajax({
                url:"${pageContext.request.contextPath}/user/deleteAuth.do",
                type:"post",
                success:function () {
                    window.location.href="personal.jsp";
                }
            });*/
        });
    })
</script>--%>
</html>
