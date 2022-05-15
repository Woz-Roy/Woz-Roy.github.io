<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
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
                    <small>用户修改</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/user/updateUser" method="post">
        <input type="hidden" name="id" value="${users.getId()}"/>
        用户名称：<input type="text" name="name" value="${users.getName()}"/>
        用户账号：<input type="text" name="account" value="${users.getAccount()}"/>
        用户密码：<input type="text" name="password" value="${users.getPassword()}"/>
        用户状态：<input type="text" name="status" value="${users.getStatus()}"/>
        <input type="submit" value="提交"/>
    </form>

</div>