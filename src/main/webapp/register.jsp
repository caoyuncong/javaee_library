<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/16
  Time: 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script>
        var b;
        function isUsernameExist(async) {
            $.ajax({
                url: 'user',
                method: 'post',
                async: async, // **** 异步请求提交：默认为true, 若为false则为同步提交，表单提交为同步提交，异步提交太慢
                data: {'action': 'isUsernameExist','username':$('#username').val()},
                dataType: 'json',
                success:function (data) {
                    console.log(data.result);
                    if(data.result){
                        $('small').css('color','#f00').text('用户名已经存在');
                        b = false;
                    }else {
                        $('small').css('color','#0f0').text('用户名可以使用');
                        b = true;
                    }
                },
                beforeSend: function () {
                    console.log('before');
                },
                complete: function () {
                    console.log('complete');
                },
                error: function (a,b,c) {
                    console.log('error...');
                    console.log(a);
                    console.log(b);
                    console.log('c: '+c);
                }
            });
        }
        $(function () {
            $('#username').blur(function () {
                isUsernameExist(true);
            });
            $('form').submit(function () {
                isUsernameExist(false);
                return b; // 不提交
            });
        });
    </script>
</head>
<body>
<h1>注册</h1>
<hr>
<form action="user" method="post">
    <input type="hidden" name="action" value="register">
    <input id="username" type="text" name="username" placeholder="用户名"><small></small><br>
    <input type="password" name="password" placeholder="密码"><br>
    <input type="submit" value="注册">
</form>
${requestScope.message}
</body>
</html>
