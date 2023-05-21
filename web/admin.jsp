<%-- 
    Document   : admin
    Created on : Feb 8, 2023, 11:28:31 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .row{
                display: flex;
                justify-content: center;
            }
            h1{
                text-align: center;
                font-family: fantasy;
                font-size: 34px;
                color:chocolate;
            }
            .col-md-12{
                text-align: center;
                box-shadow: 0px 0px 20px black;            
                border-radius: 5px;
                justify-content: center;
                align-items: center;
                padding: 50px 0;
                display: flex;
                margin: 20px 50px;
                font-size: 20px;
            }
            .col-md-6{
                display: flex;
                margin-left: 5px;
                width: 100%;
            }
        </style>
    </head>
    <body style="background-color:#99ccff;">
        <div class="container">

            <h1>  Welcome: ${sessionScope.LOGIN_USER.fullName}</h1>
            <div class="row">
                <form action="MainController">
                    <div class="col-md-6">
                        <input type="text" name="search" value="${param.search}"/>
                        <input type="submit" name="action" value="Search"/>   
                    </div>
                </form>
                <form action="MainController" method="POST">
                    <div class="col-md-6">
                        <input type="submit" name="action" value="Logout"/>
                    </div>
                </form>
            </div>
            <c:if test="${requestScope.LIST_USER != null}">
                <c:if test="${not empty requestScope.LIST_USER}">
                    <div class="col-md-12">
                        <table border="1">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>User ID</th>
                                    <th>Full Name</th>
                                    <th>Role ID</th>
                                    <th>Password</th>
                                    <th>Update</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="user" varStatus="counter" items="${requestScope.LIST_USER}">
                                <form action="MainController" method="POST">

                                    <tr>
                                        <td>${counter.count}</td>
                                        <td>
                                            <input type="text" name="userID" value="${user.userID}" readonly=""/>
                                        </td>
                                        <td>
                                            <input type="text" name="fullName" value="${user.fullName}" required=""/>
                                        </td>
                                        <td>
                                            <input type="text" name="roleID" value="${user.roleID}" readonly=""/>
                                        </td>
                                        <td>
                                            ${user.password}
                                        </td>
                                        <td>
                                            <input type="submit" name="action" value="Update"/>
                                            <input type="hidden" name="search" value="${param.search}"/>
                                        </td>
                                        <td>
                                            <c:url var="deleteLink" value="MainController">
                                                <c:param name="action" value="Delete"></c:param>
                                                <c:param name="userID" value="${user.userID}"></c:param>
                                                <c:param name="search" value="${param.search}"></c:param>
                                            </c:url>
                                            <a href="${deleteLink}">Delete</a>
                                        </td>
                                    </tr>
                                </form>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    ${requestScope.ERROR}
                </c:if>
            </c:if>
        </div>
    </body>
</html>
