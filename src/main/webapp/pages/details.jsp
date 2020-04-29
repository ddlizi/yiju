<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
   <title>房源详情页</title>

    <%--导入CSS文件--%>
    <link type="text/css" href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="Author" contect="http://www.webqin.net">
    <link rel="shortcut icon" href="../images/favicon.ico" />
    <scrip src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></scrip>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/js.js"></script>
</head>



<body>
<!--头部最上方的框-->
<jsp:include page="/pages/basehead.jsp"></jsp:include>
<!--头部最上方的框-->

<!--Logo栏和手机号栏-->
<div class="logo-phone">
    <div class="width1190">

        <table align="center" width="100%">
            <tr>
                <td>
                    <h1 class="logo"><a href="${pageContext.request.contextPath}/index.jsp"><img src="${pageContext.request.contextPath}/images/logo.png" width="163" height="59" /></a></h1>
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

<!--导航栏-->
<div class="list-nav">
    <div class="width1190">
        <ul class="nav">
            <li><a href="../index.jsp">首页</a></li>
            <li><a href="#">新房</a></li>
            <li><a href="#">二手房</a></li>
            <li><a href="#">租房</a></li>
            <li class="zhiding"><a href="#">指定购房</a></li>
            <li><a href="#">发布房源</a></li>
            <li><a href="#">公告中心</a></li>
            <li><a href="#">关于我们</a></li>
            <div class="clears"></div>
        </ul><!--nav-->
        <div class="clears"></div>
    </div><!--width1190-->
</div><!--list-nav-->
<!--导航栏End-->

<div class="content">
    <div class="width1190">
        <p style="font-size: 16px">当前位置：<a href="../index.jsp">首页</a> ＞＞ <a href="#">房源详情</a></p>
    </div>
</div>

<%--显示房屋详情--%>
<div class="content">
    <div class="width1190" style="width:1000px;">
        <div class="proImg fl">
            <img src="http://image.cxhit.com/${houseInfo.houseHeadimg}" />
        </div><!--proImg/-->
        <div style="width:535px;margin:30px 0;float: right;">
            <h3 class="proTitle">${houseInfo.houseTitle} </h3>

            <div class="proText1">

                <table width="90%" align="left" cellspacing="5" cellpadding="5" style="font-size: 130%">
                    <tr>
                        <td>房屋编号：<a name="house_id">${houseInfo.houseId}</a></td>
                        <td>房屋性质：${houseInfo.houseNature}</td>
                    </tr>
                    <tr>
                        <td>装　　修：${houseInfo.houseDecorate}</td>
                        <td>售　　价：${houseInfo.housePrice}${houseInfo.priceUnit}</td>
                    </tr>
                    <tr>
                        <td>面　　积：${houseInfo.houseArea}㎡</td>
                        <td>户　　型：${houseInfo.houseLayout}</td>
                    </tr>
                    <tr>
                        <td>朝　　向：${houseInfo.houseTurn}</td>
                        <td>配套电梯：
                           <c:choose>
                               <c:when test="${houseInfo.houseLift == 1}" >有</c:when>
                               <c:when test="${houseInfo.houseLift == 0}" >无</c:when>
                               <c:otherwise>未知</c:otherwise>
                           </c:choose>
                        </td>
                    </tr>
                    <tr>
                        <td>房屋类型：${houseInfo.houseModel}</td>
                        <td>楼　　层：${houseInfo.houseFloor}层/${houseInfo.floorAll}层</td>
                    </tr>
                    <tr>
                        <td>建造年份：${houseInfo.houseYear}</td>
                        <td>居住期限：${houseInfo.houseValid} </td>
                    </tr>
                    <tr>
                        <td colspan="2">所在小区：${houseInfo.houseAddress}</td>
                    </tr>
                    <%--<tr><td colspan="2">&nbsp;</td></tr>--%>
                </table>
            </div>
            <div class="xun-car">
                <input class="pricebutton" type="button" value="￥${houseInfo.housePrice}${houseInfo.priceUnit}">
                <input class="collectbutton" type="button" value="关注房源">
                <%--<a href="javascript:;" class="xwjg">¥<strong>${houseInfo.house_price}</strong>${houseInfo.price_unit}</a>--%>
                <%--<a href="/user/follow.do?house_id=${houseInfo.house_id}" class="projrgwc">关注房源</a>--%>
            </div>

        </div><!--proText/-->
        <div class="clears"></div>
    </div><!--width1190/-->

    <%--下面是房源详情页--%>
    <div class="proBox" style="width:1000px;margin:10px auto;">
        <div class="proEq">
            <ul class="fl">
                <li class="proEqCur">房源图片</li>
                <li>小区介绍</li>
                <li>用户评价</li>
            </ul>
            <div class="clears"></div>
        </div><!--proEq/-->

        <div class="proList">
            <h2 class="title"><a style="color:#F1323B"> </a>房源平面图</h2>
            <br>
            <c:if test="${!empty houseInfo.housePlanimg1}">
                <img src="http://image.cxhit.com/${houseInfo.housePlanimg1}" style="width: 286px;height: 188px"/>
            </c:if>
            <c:if test="${!empty houseInfo.housePlanimg2}">
                <img src="http://image.cxhit.com/${houseInfo.housePlanimg2}" style="width: 286px;height: 188px"/>
            </c:if>
            <h2 class="title"><a style="color:#F1323B"> </a>房源内饰图</h2>
            <br>
            <c:if test="${!empty houseInfo.houseImg1}">
                <img src="http://image.cxhit.com/${houseInfo.houseImg1}" style="width: 286px;height: 188px"/>
            </c:if>
            <c:if test="${!empty houseInfo.houseImg2}">
                <img src="http://image.cxhit.com/${houseInfo.houseImg2}" style="width: 286px;height: 188px"/>
            </c:if>
            <c:if test="${!empty houseInfo.houseImg3}">
                <img src="http://image.cxhit.com/${houseInfo.houseImg3}" style="width: 286px;height: 188px"/>
            </c:if>
            <c:if test="${!empty houseInfo.houseImg4}">
                <img src="http://image.cxhit.com/${houseInfo.houseImg4}" style="width: 286px;height: 188px"/>
            </c:if>
            <c:if test="${!empty houseInfo.houseImg5}">
                <img src="http://image.cxhit.com/${houseInfo.houseImg5}" style="width: 286px;height: 188px"/>
            </c:if>
            <c:if test="${!empty houseInfo.houseImg6}">
                <img src="http://image.cxhit.com/${houseInfo.houseImg6}" style="width: 286px;height: 188px"/>
            </c:if>

        </div><!--proList/-->
        <div class="proList">
            暂无信息...
        </div>
        <div class="proList">
            暂无评论……
        </div>
        <!--proList/-->
    </div><!--proBox/-->
</div><!--content/-->

<%--引入页脚--%>
<iframe src="../pages/basefoot.jsp"frameborder="0" scrolling="no" height="263px" width="100%"></iframe>

</body>

</html>
