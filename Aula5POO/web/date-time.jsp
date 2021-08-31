<%-- 
    Document   : date-time
    Created on : 30 de ago. de 2021, 20:54:29
    Author     : Ana Julia
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title> Aula5POO - JSP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Ana Julia Ladislau</h1>
        <h2>RA:1290482012003</h2>
         <hr>
        <h3><a href="index.html">Voltar</a></h3>
        <h3>Data e Hora do servidor</h3>
        <%Date now = new Date();%>
        <div><%= now %></div>
    </body>
</html>
