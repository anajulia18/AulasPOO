<%-- 
    Document   : about
    Created on : 20 de set. de 2021, 21:10:10
    Author     : Ana Julia
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  
   <title>About</title>
</head>
<style>   
    .box {
        width: 500px;
        margin-top: 200px;
        margin-left: 200px;
        background: purple;
       
    }
   
    .float {
        position: absolute;
        z-index: 2;
    }
    .form {
        margin-left: 145px;
    }
</style>
<%
    String username = null;
    if(session.getAttribute("username") != null){
        username = (String) session.getAttribute("username");
    }
%>
<body>
<%@include file="WEB-INF/jspf/header.jspf"%>
    <%
        if (session.getAttribute("username") == null) {
    %>
<div class="container">
    
            <div class="box">
              
                <div class="float">
                    <form class="form" method="post">
                        <div class="form-group">
                            <label for="username" color:"black">Digite seu Nome:</label><br>
                            <input type="text" name="username" id="username" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="password" color:"black">Digite sua Senha:</label><br>
                            <input type="text" name="password" id="password" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
    <%
        } else {
    %>
    <br>
 
      <h2 style="color: purple">Sobre mim:</h2>
         <h3>Ana Julia Ladislau</h3>
         <h3>RA: 1290482012003</h3>
         <h4>GitHub: <a href="https://github.com/anajulia18"> @anajulia18 </h4></h1>
      
<%
    }
%>
</body>
</html>