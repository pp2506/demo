<%-- 
    Document   : shopping
    Created on : Mar 1, 2023, 11:29:39 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flower Farm</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .banner{
                width: 100%;
                display: flex;
            }

            .banner img{
                width: 100%;
            }

            h1{
                color: burlywood;
                font-family: fantasy;
                text-align: center;
                justify-content: center;
                align-items: center;
                padding: 50px 0;
                margin: 0 280px;
                font-size: 45px;
            }
            .row{
                justify-content: center;
                font-family: cursive;
                font-size: 25px;
            }
            .col-md-6{
                margin-top: 20px;
                text-align: center;
                box-shadow: 0px 0px 10px black;            
                border-radius: 5px;
                justify-content: center;
                align-items: center;
                padding: 20px 0;
                background-color: ghostwhite;
                width: 35%;
                margin-left: 100px;
            }
            .col-md-6 input{
                width: 25%;
            }

            

        </style>
    </head>
    <body style="background-color:#99ccff;">
        <div class="container">
            <div >
                <h1>Welcome to Flower Store</h1>
                <div class="banner">

                    <img src="https://halotravel.vn/wp-content/uploads/2021/03/anh-bia-don-gian-1024x341.png" alt="flower" />

                </div>
            </div>
            <form action="MainController" method="POST">
                <div class="row">
                    <div class="col-md-6">
                        <select name="cmbProduct">
                            <option value="F001-Red Rose-500">Red Rose - 500$</option>
                            <option value="F002-Pink Orchird-600">Pink Orchird - 600$</option>
                            <option value="F003-Tiny Blossom-40">Tiny Blossom - 40$</option>
                            <option value="F004-Sun Flower-1000">Sun Flower - 1000$</option>
                        </select>

                        <select name="cmbQuantity">
                            <option value="1">1 bo</option>
                            <option value="2">2 bo</option>
                            <option value="3">3 bo</option>
                            <option value="4">4 bo</option>
                            <option value="5">5 bo</option>
                            <option value="6">6 bo</option>
                            <option value="7">7 bo</option>
                            <option value="8">8 bo</option>
                            <option value="9">9 bo</option>
                            <option value="10">10 bo</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <input type="submit" name="action" value="Add"/>
                        <input type="submit" name="action" value="View"/>
                    </div>
                </div>
            </form>
            <div>
                ${requestScope.MESSAGE}
            </div>
        </div>
    </body>
</html>
