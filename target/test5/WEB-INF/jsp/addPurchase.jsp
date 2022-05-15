<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>新增信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增进货信息</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/stock/addPurchase" method="post">
        商品编号：<input type="text" name="goods_id"><br><br><br>
        数量：<input type="text" name="amount"><br><br><br>
        单价：<input type="text" name="price"><br><br><br>
        进货时间：<input type="text" name="purchase_time"><br><br><br>
        供应商编号：<input type="text" name="supplier_id"><br><br><br>
        采购员编号：<input type="text" name="purchase_user_id"><br><br><br>
        采购员：<input type="text" name="purchase_user"><br><br><br>
        <input type="submit" value="添加">
    </form>

</div>