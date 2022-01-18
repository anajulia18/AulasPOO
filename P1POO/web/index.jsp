<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ServletContext sc = request.getServletContext();
    List<String> users = (List) sc.getAttribute("users_active_on_server");
%>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Inicial</title>
    </head>
    <body>
        <%
            String mensagem = "";
            if (users == null) {
                mensagem = "Não há usuários logados no momento.";
            } else if (users.size() == 1) {
                mensagem = "No momento, há " + users.size() + " usuário logado.";
            } else {
                mensagem = "No momento, há " + users.size() + " usuários logados.";
            }
        %>
        <%@include file="WEB-INF/jspf/header.jspf" %>
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
    </body>
</html>
