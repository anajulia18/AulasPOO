<%-- 
    Document   : index
    Created on : 22 de nov. de 2021, 20:34:52
    Author     : Ana Julia
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="db.TasksConnector"%>
<%@page import="web.AnaJuliaDbListener"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<% 
    Exception requestException = null;
    ArrayList<String> taskList = new ArrayList<>();
    try {
        if(request.getParameter("add") != null) {
            String taskName = request.getParameter("taskName");
            TasksConnector.addTask(taskName);
            response.sendRedirect(request.getRequestURI());
        }
        if(request.getParameter("remove") != null) {
            String taskName = request.getParameter("taskName");
            TasksConnector.removeTask(taskName);
            response.sendRedirect(request.getRequestURI());
        }
        taskList = TasksConnector.getTasks();
    } catch (Exception ex) {
        requestException = ex;
    }
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    
    <body>
        
        <%@include file="WEB-INF/jspf/header.jspf" %>
        
        
        
        
        
        
    </body>
</html>
