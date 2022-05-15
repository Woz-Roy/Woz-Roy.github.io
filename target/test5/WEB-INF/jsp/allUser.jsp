<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍列表</title>
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
                    <small>用户列表 —— 显示所有用户</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/toAddUser">新增</a>
        </div>

        <div class="row2">
        <form action="/user/queryUserByName" method="post">
            <div class="indexSearch">
                <input type="text" placeholder="请输入用户名字" name="name"/>
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
                    <th>用户编号</th>
                    <th>用户名字</th>
                    <th>用户账号</th>
                    <th>用户密码</th>
                    <th>状态</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="user" items="${requestScope.get('list')}">
                    <tr>
                        <td>${user.getId()}</td>
                        <td>${user.getName()}</td>
                        <td>${user.getAccount()}</td>
                        <td>${user.getPassword()}</td>
                        <td>${user.getStatus()}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/user/toUpdateUser?id=${user.getId()}">更改</a> |
                            <a href="${pageContext.request.contextPath}/user/deleteUserById/${user.getId()}">删除</a> |
                            <a href="${pageContext.request.contextPath}/user/toUpdateUser?id=${user.getId()}">查看</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <c:forEach begin="0" end="${page.totalPage-1}" varStatus="status">

        <li <c:if test="${status.index*page.pageNumber==page.dbIndex}">class="disabled"</c:if>>
            <a href="?start=${status.count}"
                    <c:if test="${status.index*page.pageNumber==page.dbIndex}">class="current"</c:if>
            >${status.count}</a>
        </li>

    </c:forEach>

</div>