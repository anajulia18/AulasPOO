<%-- 
    Document   : horario
    Created on : 1 de nov. de 2021, 10:57:59
    Author     : Ana Julia
--%>

<%@page import="model.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    
    Horario horaAtual = new Horario(11,10,30);
    Horario horaIntervalo = new Horario(20,30,0);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/header.jspf"%>
        <h2>Horário</h2>
        
        <h3>Horário Atual:</h3>
        <div><%=horaAtual.getHorario()%></div>
        
        <h3>Horário do Intervalo:</h3>
        <div><%=horaIntervalo.getHorario()%></div>
    </body>