<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎登录 — 易居住房交易平台</title>

    <%--导入CSS文件--%>
    <link type="text/css" href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" />
    <%--<link type="text/css" href="css/buttonStyle.css" rel="stylesheet" />--%>

    <%--导入JS文件--%>
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/wer.js"></script>
    <%--<script src="js/signup.js"></script>--%>
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
                    <h1 class="logo"><a href="../index.jsp"><img src="${pageContext.request.contextPath}/images/logo.png" width="163" height="59" /></a></h1>
                </td>

                <td align="center">
                    <div class="phones"><strong>000-0000000</strong></div>
                    <div class="clears"></div>
                </td>
            </tr>
        </table>
    </div><!--width1190/-->
</div><!--logo-phone/-->
<!--Logo栏和手机号栏-->

<hr width="1280px">

<!--注册-->
<div class="content">
    <div class="width1190">
        <div class="reg-logo">

            <form  method="post" action="" class="zcform">
                <table align="center" cellpadding="100px" cellspacing="10px">
                    <tr>
                        <td align="right">
                            <label class="one" for="phone">手机号码：</label>
                        </td>
                        <td colspan="2">
                            <input id="phone" name="phone" type="text" class="required" value placeholder="请输入您的手机号" />
                        </td>
                    </tr>
                    <tr><td><br></td></tr>
                    <tr>
                        <td>
                            <label class="one"  for="password">登录密码：</label>
                        </td>
                        <td colspan="2">
                            <input id="password" name="password" type="password" class="{required:true,rangelength:[8,20],}" value placeholder="请输入登录密码" />
                        </td>
                    </tr>
                    <tr><td><br></td></tr>
                    <tr>
                        <td>
                            <label class="one"  for="verifyCode">验证码：</label>
                        </td>
                        <td>
                            <input id="verifyCode" name="verifyCode" type="text" class="required" value placeholder="请输入验证码" />
                        </td>
                        <td>
                           <div id="v_container" style="width: 180px;height: 45px;"></div>
                            <%--<a>　</a><button type="button" class="sendVerifyCode" id="btn" name="btn" style="width: 180px;height: 45px">点击获取验证码</button><a>　</a>--%>
                        </td>
                    </tr>
                    <tr><td><br></td></tr>
                    <tr>
                        <td colspan="3">

                            <input class="submit" type="button" value="立即登录"/>
                            <%--<input class="sub-btn" type="button" value="立即注册"/>--%>
                        </td>
                    </tr>
                </table>
            </form>
            <div class="reg-logo-right">
                <h3>如果您没有账号，请</h3>
                <%--FIXME 这里跳转至【注册页面】--%>
                <a href="#" class="logo-a" target="_self">立即注册</a>

                <br>

                <h3>忘记密码？ 请</h3>
                <%--FIXME 这里跳转至【找回密码页面】--%>
                <a href="#" class="logo-a" target="_self">找回密码</a>

            </div><!--reg-logo-right/-->
            <div class="clears"></div>
        </div><!--reg-logo/-->
    </div><!--width1190/-->
</div><!--content/-->

<%--加入页脚--%>
<jsp:include page="basefoot.jsp"></jsp:include>

</body>
<script type="text/javascript">
    var verifyCode = new GVerify("v_container");


    $(function () {
        $(".submit").on("click",function () {
            var phone = $("input[name=phone]").val();
            var password = $("input[name=password]").val();
            var code = $("input[name=verifyCode]").val();

            if (phone=="") {
                alert("请输入手机号码！");
                return;
            }
            if (password=="") {
                alert("密码不能为空！");
                return;
            }
            if (code==""){
                alert("验证码不能为空！");
                return;
            }
            if (!verifyCode.validate(code)){
                alert("验证码错误！");
                return;
            }
            else {
                $.ajax({
                    url: "${pageContext.request.contextPath}/user/login.do",
                    type: "post",
                    dataType: "json",
                    data: {
                        phone:phone,
                        password:password
                    },
                    success: function (data) {
                        if (data.result=="0") {
                            alert("用户还没有注册");
                            window.location.href="${pageContext.request.contextPath}/pages/signup.jsp"
                        }else if (data.result=="1"){
                            alert("密码错误");
                        }else {
                            window.location.href="${pageContext.request.contextPath}/house/findFourHouse.do"
                        }
                    }
                })
            }
        })
    })






</script>


</html>
