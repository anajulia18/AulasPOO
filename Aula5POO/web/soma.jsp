<%-- 
    Document   : soma
    Created on : 30 de ago. de 2021, 21:00:25
    Author     : Ana Julia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String errorMessage = null;
    double n1=0, n2=0, result = 0;
    String error = null;
    if(request.getParameter("n1")== null || request.getParameter("n2")== null){
      error = "Não foram informados os parâmetros 'n1',e 'n2' ";
    } else 
    try{
        n1 = Double.parseDouble(request.getParameter("n1"));
    }catch(Exception e){
       error = "O valor informado como parâmetro n1('" +request.getParameter("n1")+"') não é um número válido";
       
    }
    
    try{
        n2 = Double.parseDouble(request.getParameter("n2"));
    }catch(Exception e){
         error = "O valor informado como parâmetro n2('" +request.getParameter("n2")+"') não é um número válido";
    }
    
    try{
        result = n1+n2;
    }catch(Exception e){
        errorMessage = "Erro ao calcular soma - " + e.getMessage();
    }
%>
<html>
    <head>
        <title>Aula5POO - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Ana Julia Ladislau</h1>
        <h2>RA:1290482012003</h2>
         <hr>
        <h3><a href="index.html">Voltar</a></h3>
        <h3>Soma</h3>
        <%if(errorMessage==null){%>
            <h4><%= n1 %> + <%= n2 %> = <%= result %></h4>
        <%}else{%>
            <div style="color: red"><%= errorMessage %></div>
        <%}%>
        <form>
            <input type="number" name="n1" value="2"/>+
            <input type="number" name="n2" value="2"/>
            <input type="submit" value="="/>
        </form>
    </body>
</html>