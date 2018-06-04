<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/30
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>index</title>
    <script src="../jquery-1.11.3.min.js"></script>
</head>
<body>
    <h1>index页面</h1>
    <a href="/toAddPage">新增</a>
    <table>
        <tr>
            <th>编号</th>
            <th>地址</th>
            <th>年龄</th>
            <th>日期</th>
            <th>姓名</th>
            <th>性别</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${list}" var="user">
            <tr>
                <td>${user.userId}</td>
                <td>${user.userAddress}</td>
                <td>${user.userAge}</td>
                <td>${user.userBir}</td>
                <td>${user.userName}</td>
                <td>${user.userSex}</td>
                <td>
                    <a href="javascript:del(${user.userId})">删</a>
                    <a href="/toUP/${user.userId}">修</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <form id="f" method="post">
        <input type="hidden" name="_method" value="DELETE"/>
    </form>
    <script>
        function del(id) {
            $("#f").prop("action","/delete/"+id);
            $("#f").submit();
        }
    </script>
</body>
</html>