<%-- 
    Document   : data
    Created on : 1 de nov. de 2021, 10:57:11
    Author     : Ana Julia
--%>

<%@page import="model.Data"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Data hoje = new Data();
    Data padrao = new Data();

    hoje.setDia(01);
    hoje.setMes(11);
    hoje.setAno (2021);
    
    
    Data meuAniver = new Data(13,12,2001);

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>Classe Data</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h3>Classe Data</h3>
        <h3>Data padrão:</h3>
        <div><%=padrao.getDia() %>/<%=padrao.getMes() %>/<%=padrao.getAno() %></div>
        
        <h3>Data de hoje:</h3>        
        <div><%=hoje.getData()%></div>

        <h3>Meu Aniversário:</h3>
        <div><%= meuAniver.getData()%></div>
    </body>
</html>