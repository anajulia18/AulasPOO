<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <title>Index</title>
</head>
<style>
    .box {
        width: 500px;
        margin: 200px 0;
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
    if (request.getParameter("username") != null && request.getParameter("password") != null) {
        session.setAttribute("username", request.getParameter("username"));
    }
    if(request.getParameter("logout")!=null){
    session.removeAttribute("username");
    response.sendRedirect(request.getRequestURI());
    }
%>
<body>
<%@include file="WEB-INF/jspf/header.jspf"%>
<%
    if (request.getParameter("username") == null){
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
                            <input type="submit" name="submit" class="btn btn-info btn-md" value="Entrar">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div></div>
<%
    } else{
%>
<%
    String username = request.getParameter("username");
%>
<h2>
    <form>
   <input type="submit" name="logout" class="btn btn-info btn-md" value="Sair">
 </form>
<%=
    "Usuário: " + username
%>
</h2>
<h2>
    <%=
    "Números da Sorte: "
    %>
</h2>
<%
    for (int i = 0; i < 6; i++) {
%>
 <h3>
     <%= (int)(Math.random()*100)%>
 </h3>
<%
    }}
%>
<br/>
</body>
</html>