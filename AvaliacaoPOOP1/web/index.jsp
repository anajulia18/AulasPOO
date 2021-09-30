<%-- 
    Document   : index
    Created on : 29 de set. de 2021, 20:54:33
    Author     : Ana Julia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    ServletContext sc = request.getServletContext();
    List<String> users = (List)
    sc.getAttribute("users_active_on_server");
 %>
    


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Principal</title>
    </head>
    
<%
            String mensagem = "";
            
            if(users==null){
            
            mensagem = "Não há usuários logado no momento.";
            
            }
            
            else if(users.size() == 1 ){
            
            mensagem = "Há " + users.size() + " usuário logado";
            
            }
            else {
            
             mensagem = "Há " + users.size() + " usuários logados";

            }
         %>
         
         <%@include file = "WEB-INF/jspf/header.jspf" %>
         
         <main>
             
         <%if(isSessionActive && !users.isEmpty()){%>
         
         <table>
                <thead>
                    <tr>
                        <th>
                            Usuários Onlines
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <%for(String user : users){%>
                    <tr>
                        <td>
                            <b><%=user%></b>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
            <%}%>
            <h1><%=mensagem%></h1>  
    </main>
     <link rel="stylesheet" type="text/css" href="bootstrap/bootstrap/bootstrap/css/bootstrap.css">
    

