<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户首页</title>
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-migrate-1.1.1.min.js"></script>
    <script>
        $(function(){
            setScreenSize();
            window.onresize = setScreenSize; //屏幕大小改变时调整页面
        });
        //页面自适应屏幕
        function setScreenSize(){
            var contentHeight = getTotalHeight()-75-30-5;
            $("#divMenu").height(contentHeight);
            $(".divContentPage").height(contentHeight);
            $("#frameContentPage").height(contentHeight);
            var contentWidth = getTotalWidth()-$("#divMenu").width()-25;
            $(".divContentPage").width(contentWidth);
            $("#frameContentPage").width(contentWidth);
        }
        //获取浏览器可用于显示页面的高度
        function getTotalHeight() {
            if ($.browser.msie) {//如果浏览器是IE
                return document.compatMode == "CSS1Compat" ? document.documentElement.clientHeight : document.body.clientHeight;
            } else {//其它浏览器
                return self.innerHeight;
            }
        }
        //获取浏览器可用于显示页面的宽度
        function getTotalWidth() {
            if ($.browser.msie) {//如果浏览器是IE
                return document.compatMode == "CSS1Compat" ? document.documentElement.clientWidth : document.body.clientWidth;
            } else {//其它浏览器
                return self.innerWidth;
            }
        }
    </script>
</head>
<body>
<div class="page">
    <div class="divHeader">
        <h1 class="float_left">简易进销存系统V1.0</h1>
        <p class="float_right">
            <span>欢迎:${users.getName()}</span>
            <a class="header_button" href="${pageContext.request.contextPath}/user/updateUser" target="frameContentPage">修改信息</a>
            <a class="header_button" href="/user/loginOut" onclick="return confirm('你确定要注销吗')">注销</a>
        </p>
    </div>
    <div id="divMenu" class="divMenu">
        <ul>
            <li><a href="/user/allUser" target="frameContentPage">用户管理</a></li>
            <li><a href="/jxc/supplier/list" target="frameContentPage">供应商管理</a></li>
            <li><a href="/jxc/goods/list" target="frameContentPage">商品管理</a></li>
            <li><a href="/stock/allPurchase" target="frameContentPage">进货管理</a></li>
            <li><a href="/jxc/sale/list" target="frameContentPage">销售管理</a></li>
            <li><a href="/jxc/inventory/list" target="frameContentPage">库存管理</a></li>
        </ul>
    </div>
    <div class="divContentPage">
        <iframe id="frameContentPage" name="frameContentPage" frameborder="0"></iframe>
    </div>
    <div class="divFooter">老王 荣誉出品</div>
</div>
</body>
</html>
