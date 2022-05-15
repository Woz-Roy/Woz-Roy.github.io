<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>进货管理列表</title>
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
                    <small>进货管理列表 —— 显示所有信息</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/stock/toaddPurchase">新增</a>
        </div>

        <div class="row2">
            <form action="/user/queryUserByName" method="post">
                <div class="indexSearch">
                    <input type="text" placeholder="请输入商品名称" name="goodsName"/>
                    <input type="submit" value="搜索"/>
                </div>
            </form>
        </div>
    </div>



    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>主键</th>
                    <th>商品编号</th>
                    <th>数量</th>
                    <th>单价</th>
                    <th>进货时间</th>
                    <th>供应商编号</th>
                    <th>采购员编号</th>
                    <th>采购员</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="purchase" items="${requestScope.get('list')}">
                    <tr>
                        <td>${purchase.getId()}</td>
                        <td>${purchase.getGoods_id()}</td>
                        <td>${purchase.getAmount()}</td>
                        <td>${purchase.getPrice()}</td>
                        <td>${purchase.getPurchase_time()}</td>
                        <td>${purchase.getSupplier_id()}</td>
                        <td>${purchase.getPurchase_user_id()}</td>
                        <td>${purchase.getPurchase_user()}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/user/toUpdateUser?id=${purchase.getId()}">更改</a> |
                            <a href="${pageContext.request.contextPath}/user/deleteUserById/${purchase.getId()}">删除</a> |
                            <a href="${pageContext.request.contextPath}/user/toUpdateUser?id=${purchase.getId()}">查看</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>