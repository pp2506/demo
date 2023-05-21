<%-- 
    Document   : select
    Created on : Mar 22, 2023, 11:27:42 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Page</title>
    </head>
    <body>
    <c:if test="${requestScope.LIST_USERTOP2 != null}">
        <c:if test="${not empty requestScope.LIST_USERTOP2}">
            <table border="1">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>User ID</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="user" varStatus="counter" items="${requestScope.LIST_USERTOP2}">

                    <form action="MainController" method="POST">
                        <tr>
                            <td>${counter.count}</td>
                            <td>
                                <input type="text" name="userID" value="${user.userID}" readonly=""/>
                            </td>
                        </tr>
                    </form>
                </c:forEach>
                </tbody>
            </table>
            ${requestScope.ERROR} 
        </c:if>
    </c:if>
</body>
</html>
