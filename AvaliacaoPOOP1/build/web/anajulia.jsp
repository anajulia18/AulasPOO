<%-- 
    Document   : anajulia
    Created on : 29 de set. de 2021, 20:54:53
    Author     : Ana Julia
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <link rel="stylesheet" type="text/css" href="bootstrap/bootstrap/bootstrap/css/bootstrap.css">

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sobre mim</title>
    </head>
    <body>
       
        
        <%@include file ="WEB-INF/jspf/header.jspf" %>   
        
        
        <main> 
        
            <%if(isSessionActive){%>
            <h4>Ana Julia Ladislau dos Santos</h4>
            <h4>Ra: 1290482012003 </h4>
            <h4>Ingresso:Ingressei no 1 Ciclo </h4>
            <h4><a href="https://www.github.com/anajulia18" target="_blank">Meu GitHub</a></h4>
     
        <div class="container">
  <table class="table">
    <thead>
      <tr>
        <th>Matérias</th>
        <th>Professores</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Programação Orientada a Objetos</td>
        <td>Ricardo</td>
      </tr>      
      <tr class="success">
        <td>Engenharia de Software 3</td>
        <td>Renata</td>
      </tr>
      <tr class="danger">
        <td>Linguagem de Programação 4</td>
        <td>Paulo</td>
      </tr>
      <tr class="info">
        <td>Sistemas Operacionais</td>
        <td>Fábio</td>
      </tr>
      <tr class="warning">
        <td>Metodologia da Pesquisa Científica</td>
        <td>Sabrina</td>
      </tr>
       <tr class="warning">
        <td>Banco de Dados</td>
        <td>Simone</td>
      </tr>
    </tbody>
  </table>
</div>
            <%} else {%>
            <h4 class="error">Você não tem acesso a esse conteúdo, para acessar realize o Login.</h4>
            <%}%>
        </main>
    </body>
</html>
