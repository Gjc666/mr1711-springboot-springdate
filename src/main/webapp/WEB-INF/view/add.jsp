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
    <title>add</title>
</head>
<body>
<center>
    <h1>新增页面</h1>
    <form action="/add" method="post">
        姓名:<input type="text" name="userName"/>
        <br/>
        年龄:<input type="text" name="userAge"/>
        <br/>
        性别:<input type="radio" name="userSex" value="1"/>男
        <input type="radio" name="userSex" value="2"/>女
        <br/>
        住址:<input type="text" name="userAddress">
        <br/>
        生日:<input type="text" name="userBir">
        <br/>
        <input type="submit"/>
    </form>
</center>
</body>
</html>