<%-- 
    Document   : createUser
    Created on : Feb 25, 2023, 10:59:22 AM
    Author     : Admin
--%>

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Create User</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">        
        <style>
            .but{
                display: flex;
                justify-content: center;
                text-align: center;
                margin: 40px 0;
            }
            table{
                margin-right: 200px;
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
                font-family: fantasy;
                font-size: 30px;
                vertical-align: middle;
                color: white;
            }
            .g-recaptcha{
                margin: 10px 0 10px 40%;
            }
        </style>
    </head>
    <body style="background-color:#99ccff;">
    <marquee>User Information</marquee>
    <form action="MainController" method="POST" id="form">
        <table id="tbl" class="feedback">
            <tr class="row">
                <td><label for="id">User ID</label> </td>
                <td><input id="id" type="text" name="userID" required=""/></td>
                    ${requestScope.USER_ERROR.userIDError}
            </tr>
            <tr class="row">
                <td><label for="name">Full name</label> </td>
                <td><input id="name" type="text" name="fullName" required=""/></td>
                    ${requestScope.USER_ERROR.fullNameError}
            </tr>
            <tr class="row">
                <td><label for="role">Role ID</label> </td>
                <td><input id="role" type="text" name="roleID" value="US" readonly=""/></td>
            </tr>
            <tr class="row">
                <td><label for="pw">Password</label> </td>
                <td><input id="pw" type="password" name="password" required=""/></td>
            </tr>
            <tr class="row">
                <td><label for="cf">Confirm</label> </td>
                <td><input id="cf" type="password" name="confirm" required=""/></td>
                    ${requestScope.USER_ERROR.confirmError}
            </tr>
        </table>
        <div class="g-recaptcha" data-sitekey="6LepQQolAAAAAPQiVELfoe6aZqvDkehdinpFKBvf"></div>
        <div id="error"></div>
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <script>
            window.onload = function () {
                let isValid = false;
                const form = document.getElementById("form");
                const error = document.getElementById("error");

                form.addEventListener("submit", function (event) {
                    event.preventDefault();
                    const response = grecaptcha.getResponse();
                    if (response) {
                        form.submit();
                    } else {
                        error.innerHTML = "Please check";
                    }
                });
            };
        </script>

        <div class="but">
            <input name="action" value="Create" hidden=""/><br/>
            <input type="submit" name="action" value="Create"/>
            <input type="reset" value="Reset"/>
        </div>    

    </form>
    <a href="createUser.html">Create user</a>
    ${requestScope.ERROR}
</body>
</html>
