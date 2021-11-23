<%-- 
    Document   : index
    Created on : 22 de nov. de 2021, 21:06:22
    Author     : Ana Julia
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.TasksConnector"%>
<%@page import="web.AnaJuliaDBListener"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    Exception requestException = null;
    ArrayList<String> taskList = new ArrayList<>();
    try {
        if(request.getParameter("add") != null) {
            String taskName = request.getParameter("TaskName");
            TasksConnector.addTask(taskName);
            response.sendRedirect(request.getRequestURI());
        }
        if(request.getParameter("remove") != null) {
            String taskName = request.getParameter("TaskName");
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
        <title>P2 - POO </title>
    </head>
    <body>
        <h1> AnaJuliaAPP - 1290482012003 </h1>
        <% if(requestException != null) { %>
            <div style="color:red">
                Erro na criação do Banco de Dados:
                <%= requestException.getMessage() %>
            </div>
        <% } %>
        <h3>Tarefas</h3>
        <form>
            <input type="text" name="taskName" />
            <input type="submit" name="add" value="Adicionar" />
        </form>
        <table>
            <%  for(String taskName: taskList) { %>
                <tr>
                    <td><%= taskName %></td>
                    <td>
                        <form>
                            <input type="hidden" name="descritarefa" value="<%= taskName %>" />
                            <input type="submit" name="remove" value="-" />
                                   
                        </form>
                    </td>
                </tr>
            <%  } %>
        </table>
    </body>
</html>