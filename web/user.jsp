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
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">        
        <style>
            .but{
                display: flex;
                justify-content: center;
                text-align: center;
                margin: 40px 0;
            }
            table{
                background-color: burlywood;
            }

            .feedback{
                display: flex;
                justify-content: space-around;
            }

            label{
                margin-right: 30px ;
            }


            .input *{
                width: 100%;
                padding: 8px 80px;
                margin-top: 15px ;
            }

            .row label{
                font-size: 100%;
                vertical-align: middle;
                color: white;
                font-size: 30px;

            }
        </style>
    </head>
    <body style="background-color:#99ccff;">
        <h1>User page(US role)</h1>
        <table id="tbl" class="feedback">
            <tr class="row">
                <td><label for="id">User ID:</label> </td>
                <td>${sessionScope.LOGIN_USER.userID}</td>
            </tr>
            <tr class="row">
                <td><label for="name">Full name:</label> </td>
                <td>${sessionScope.LOGIN_USER.fullName}</td>
            </tr>
            <tr class="row">
                <td><label for="role">Role ID:</label> </td>
                <td>${sessionScope.LOGIN_USER.roleID}</td>
            </tr>
            <tr class="row">
                <td><label for="pw">Password:</label> </td>
                <td>${sessionScope.LOGIN_USER.password}</td>
            </tr>
        </table>
        <form action="MainController">
            <div class="but">
                <input type="submit" name="action" value="Logout">
            </div>
        </form>
    </body>
</html>
