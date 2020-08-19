<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set value="${pageContext.request.contextPath}" var="ctx"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <title>后台登录</title>
    <link href="${ctx}/static/css/login.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${ctx}/static/js/jquery.min.js"></script>
</head>
<body>

<div class="login">
    <div class="message">数据库管理工具-登录</div>
    <div id="darkbannerwrap"></div>

    <form method="post" id="loginForm">
        <input name="knowledgename" placeholder="用户名" required="" type="text">
        <hr class="hr15">
        <input name="password" placeholder="密码" required="" type="password">
        <hr class="hr20">
        <input value="登录" style="width:100%;" id="sublogin" type="button">
        <hr class="hr20">
        <!-- 帮助 <a onClick="alert('请联系管理员')">忘记密码</a> -->
    </form>


</div>


<script>
    var ctx = '${ctx}' ;
    $('#sublogin').on('click',function () {
        $.ajax({
            url: ctx + '/subLogin',
            type:'post',
            data:$('#loginForm').serialize(),
            dataType:'json',
            success:function (res) {
                if(res.code == 0 ){
                    window.location.href = ctx + res.data ;
                } else {
                    alert(res.msg);
                }
            }
        })
    });

</script>
</body>
</html>