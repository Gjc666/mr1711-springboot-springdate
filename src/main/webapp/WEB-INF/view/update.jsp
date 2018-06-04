<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/30
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>update</title>
</head>
<body>
<center>
    <h1>修改页面</h1>
    <form action="/update" method="post">
        <input type="hidden" name="_method" value="PUT"/>
        <input type="hidden" name="userId" value="${user.userId}"/>
        姓名:<input type="text" name="userName" value="${user.userName}"/>
        <br/>
        年龄:<input type="text" name="userAge" value="${user.userAge}"/>
        <br/>
        性别:<input type="radio" name="userSex" value="1" ${user.userSex == 1? "checked":""}/>男
        <input type="radio" name="userSex" value="2" ${user.userSex == 2? "checked":""}/>女
        <br>
        住址:<input type="text" name="userAddress" value="${user.userAddress}"/>
        <br/>
        生日:<input type="text" name="userBir" value="${user.userBir}"/>
        <br/>
        <input type="submit"/>
    </form>
</center>
</body>
</html>