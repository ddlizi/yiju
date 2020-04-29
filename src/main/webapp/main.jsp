<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>易居住房信息平台</title>

    <!--    下面是几个导入的包-->
    <link type="text/css" href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet"/>
    <link type="text/css" href="${pageContext.request.contextPath}/css/searchInputStyle.css" rel="stylesheet"/>
    <link type="text/css" href="${pageContext.request.contextPath}/css/searchReset.css" rel="stylesheet"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/js.js"></script>
    <!--    上面是几个导入的包-->
    <script type="text/javascript">
        var picsArr=new Array();
        picsArr[0]="images/lunbotu/fang1.jpg"
        picsArr[1]="images/lunbotu/fang2.jpg"
        picsArr[2]="images/lunbotu/fang3.jpg"
        var index=0;
        var timer=0;
        window.onload=showPic;

        function showNext() {
            clearTimeout(timer);
            showPic();
        }
        function showPic() {
            if(index<(picsArr.length-1)){
                index++;
            }else {
                index=0;
            }
            document.getElementById("pic").src=picsArr[index];
            timer=setTimeout("showPic()",2000);
        }
        function showPre() {
            showPrePic()
        }
        function showPrePic() {
            if(index>0){
                index--;
            }else {
                index=picsArr.length-1;
            }
            document.getElementById("pic").src=picsArr[index];
        }
    </script>

    <%--轮播图的CSS--%>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        li {
            list-style: none;
        }

        #adv {
            /*margin:110px auto;*/
            width: 1190px;
            position: relative;
        }

        #adv li {
            display: none;
        }

        #adv .show {
            display: block;
        }

        #next, #prev {
            position: absolute;
            top: 45%;
            cursor: pointer;
            transition: all .5s;
            opacity: .7;
        }

        #next:hover, #prev:hover {
            transform: scale(1.1);
            opacity: 1;
        }

        #prev {
            left: 10px;
            height: 15%;
        }

        #next {
            right: 10px;
            height: 15%;
        }
    </style>

   <%-- <%
        String path = request.getRequestURI();
        String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path;
    %>
    <base href="<%=basePath%>">
--%>
</head>
<body>
<%--   include - 引入公共页面      --%>
<jsp:include page="/pages/basehead.jsp"></jsp:include>
<!--头部最上方的框-->

<!--Logo栏和手机号栏-->
<div class="logo-phone">
    <div class="width1190">
        <table align="center" width="100%">
            <tr>
                <td>
                    <h1 class="logo"><a href="${pageContext.request.contextPath}/main.jsp"><img src="${pageContext.request.contextPath}/images/logo.png" width="163" height="59"/></a></h1>
                </td>
                <td>
                    <div class="searchbox">
                        <div class="mod_select">
                            <div class="select_box">
                                <span class="select_txt">房屋</span>
                            </div>
                        </div>
                        <%--FIXME 这里是搜索栏，需要实现相应的模糊搜索功能 --%>
                        <form action="#">
                            <input type="text" name="house_title" id="searchPlaceholder" class="import"
                                   placeholder="请输入搜索信息">
                            <input type="submit" value="搜   索" class="btn-search">
                        </form>
                    </div>
                </td>
                <td align="center">
                    <div class="phones"><strong>000-00000000</strong></div>
                    <div class="clears"></div>
                </td>

            </tr>
        </table>
    </div><!--width1190/-->
</div><!--logo-phone/-->
<!--Logo栏和手机号栏-->

<!--导航栏-->
<div class="list-nav">
    <div class="width1190">
        <ul class="nav">
            <li><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
            <li><a href="${pageContext.request.contextPath}/house/findFourHouse.do?houseType=0">新房</a></li>
            <li><a href="${pageContext.request.contextPath}/house/findFourHouse.do?houseType=1">二手房</a></li>
            <li><a href="${pageContext.request.contextPath}/house/findFourHouse.do?houseType=2">租房</a></li>
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

<br>

<!--广告轮播栏-->
<div class="width1190">
    <ul id="adv">
        <li style="display: block;"><img src="images/lunbotu/fang1.jpg" alt="" id="pic"></li>
        <img src="images/lunbotu/l.png" id="prev" alt="" onclick="showPre()">
        <img src="images/lunbotu/r.png" id="next" alt="" onclick="showNext()">
    </ul>
</div>
<%--广告轮播栏End --%>

<%--展示主页推荐栏--%>
<div class="content">
    <div class="width1190">
        <%--【新房推荐】--%>
        <%--FIXME 这里添加跳转事件--%>
        <h2 class="title"><a style="color:#F1323B">❤</a>新房推荐<a href="${pageContext.request.contextPath}/house/findAllHouseByType.do?houseType=0">更多&gt;&gt;</a></h2>
        <div class="index-fang-list">
            <%--FIXME 这里使用Foreach循环，从数据库读取房屋信息 --%>
            <c:forEach items="${newHouse}" var="nh">
                <dl>
                    <dt><a href="#"><img src="http://image.cxhit.com/${nh.houseHeadimg}" width="286"
                                         height="188"/></a></dt>
                    <dd>
                        <h3><a href="#"></a></h3>
                        <div class="hui">${nh.houseLayout} | ${nh.houseArea} ㎡| ${nh.houseDecorate}</div>
                    </dd>
                </dl>

            </c:forEach>
            <div class="clears"></div>
        </div><!--index-fang-list/-->
        <%----%>

        <%--旧房推荐--%>
        <h2 class="title"><a style="color:#F1323B">❤</a>二手房推荐 <a
                href="${pageContext.request.contextPath}/house/findAllHouseByType.do?houseType=1">更多&gt;&gt;</a></h2>
        <div class="index-fang-list">
        <c:forEach items="${oldHouse}" var="oh">
                <dl>
                    <dt><a href="#"><img src="http://image.cxhit.com/${oh.houseHeadimg}" width="286"
                                         height="188"/></a></dt>
                    <dd>
                        <h3><a href="#">${oh.houseTitle}</a></h3>
                        <div class="hui">${oh.houseLayout}| ${oh.houseArea} ㎡ | ${oh.houseDecorate}</div>
                    </dd>
                </dl>
        </c:forEach>
            <div class="clears"></div>
        </div><!--index-fang-list/-->

        <%--【二手房推荐】--%>
        <h2 class="title"><a style="color:#F1323B">❤</a>租房推荐 <a
                href="${pageContext.request.contextPath}/house/findAllHouseByType.do?houseType=2">更多&gt;&gt;</a></h2>
        <div class="index-ershou">

            <%--左侧栏--%>
            <div class="in-er-left">
                <a href="#"><img src="${pageContext.request.contextPath}/images/fangt1.jpg" width="380" height="285"/></a>
                <div class="in-er-left-text"><strong class="fl">闵行南方发的撒的发的司法</strong><strong
                        class="fr alignRight">¥2841</strong></div>
            </div><!--in-er-left/-->

            <%--右侧栏--%>
            <div class="in-er-right">
                <c:forEach items="${rentHouse}" var="rh">

                    <dl>
                        <dt><a href="#"><img
                                src="http://image.cxhit.com/${rh.houseHeadimg}"
                                style="width: 150px; height: 115px;" width="150" height="115"/></a></dt>
                        <dd>
                            <h3>
                                <a href="#">${rh.houseTitle}</a>
                            </h3>
                            <br>
                            <div class="in-er-right-text">
                                    ${rh.houseAddress}
                            </div>
                            <div class="price">¥<strong>${rh.housePrice}${rh.priceUnit}</strong></div>
                        </dd>
                        <div class="clears"></div>

                    </dl>
                </c:forEach>
                <div class="clears"></div>

            </div><!--in-er-right/-->
            <div class="clears"></div>
        </div><!--index-ershou/-->
        <%--【二手房推荐END】--%>

    </div><!--width1190/-->
</div><!--content/-->

<!--这是页脚-->
<jsp:include page="pages/basefoot.jsp"></jsp:include>

</body>
</html>
