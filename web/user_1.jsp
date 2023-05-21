<%-- 
    Document   : user
    Created on : Feb 8, 2023, 11:27:54 AM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <body>
        <h1>User page(US role)</h1>
        <c:if test="${sessionScope.LOGIN_USER == null || sessionScope.LOGIN_USER.roleID ne 'US'}">
            <c:redirect url="login.html"></c:redirect>
        </c:if>
        User ID: ${sessionScope.LOGIN_USER.userID} </br>
        Full Name: ${sessionScope.LOGIN_USER.fullName} </br>
        Role ID: ${sessionScope.LOGIN_USER.roleID} </br>
        Password: ${sessionScope.LOGIN_USER.password}
        <form action="MainController">
            <input type="submit" name="action" value="Logout">
        </form>
    </body>
</html>
