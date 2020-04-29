<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>页头</title>
    <!--    下面是几个导入的包-->
    <link type="text/css" href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/js.js"></script>
</head>
<body>

<!--头部最上方的框-->
<div class="header">
    <div class="width1190">
        <div class="fl" style="font-size: 14px">您好，欢迎来到<a href="${pageContext.request.contextPath}/index.jsp">易居住房信息平台！</a></div>
        <div class="fr">


            <a href="${pageContext.request.contextPath}/pages/login.jsp" style="font-size: 14px" target="_blank"><strong>登录</strong></a> |
            <a href="${pageContext.request.contextPath}/pages/signup.jsp" style="font-size: 14px" target="_blank"><strong>注册</strong></a>


            <a href="#" style="font-size: 14px" target="_blank"><strong>你好！${user.phone}</strong></a>


            <a  style="font-size: 14px">欢迎使用</a>　|
            <a href="${pageContext.request.contextPath}/pages/personal.jsp" style="font-size: 14px" target="_blank"><strong>个人中心</strong></a> |
            <a href="#" style="font-size: 14px"><strong>退出</strong></a> |
            <a href="javascript:;" onclick="" style="font-size: 14px">加入收藏</a> |
            <a href="javascript:;" onclick="" style="font-size: 14px">设为首页</a>
        </div>
        <div class="clears"></div>
    </div><!--width1190/-->
</div>
<!--头部最上方的框-->

</body>
</html>
