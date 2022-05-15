<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
  <title>用户登录</title>  //199000133王者
  <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
  <script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.min.js"></script>
  <script src="https://code.jquery.com/jquery-migrate-1.1.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/layer/layer.js"></script>
  <script>
    //ajax登录验证，成功跳转首页，否则提示错误信息
    function onLogin(){
      var account=$("input[name='account']").val();
      var password=$("input[name='password']").val();
      $.ajax({
        type: "post",
        url: "${pageContext.request.contextPath}/user/login",
        data: {account:account,password:password},
        dataType: "text",
        success: function (rdata) {
          if (rdata=="ok") {
            window.location.href="/user/login"
          } else {
            alert(rdata);
          }
        }
      });
    }
  </script>
</head>
<body>
<div class="container">
  <h1>用户登录</h1>
  <form>
    <div class="row">
      <span>登录账号：</span>
      <input type="text" class="textBox" id="account" name="account" />
    </div>
    <div class="row">
      <span>登录密码：</span>
      <input type="password" class="textBox" id="password" name="password" />
    </div>
    <div class="row">
      <input type="button" class="btn2" value="登录" onclick="onLogin()" />
    </div>
  </form>
</div>
</body>
</html>
