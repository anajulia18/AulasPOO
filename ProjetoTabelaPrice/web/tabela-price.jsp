<%-- 
    Document   : tabela-price
    Created on : 13 de set. de 2021, 20:19:48
    Author     : Ana Julia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.text.DecimalFormat"%>

<%
    
    Scanner num = new Scanner(System.in);
    DecimalFormat deci = new DecimalFormat("0.00");
    
    String errorMessage;
    double em = 0, per = 0;
    double juros = 0, amort = 0;
    int mes = 0;
    double parcela = 0;
  
    
    try{
        
         em = Double.parseDouble(request.getParameter("em"));
         per = Double.parseDouble(request.getParameter("per"));
         mes = Integer.parseInt(request.getParameter("mes"));
         
         per = per/100;  
         
         parcela = (em*per) /(1-(1/(Math.pow(1 + per,mes))));
         
        juros = em * per;
        
    }catch(Exception e){
        errorMessage = "Erro ao ler parâmetros";
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabela Price</title>
    </head>
    <body>
        
        <header>
            <%@include file="WEB-INF/jspf/header.jspf"%>
        </header>
        
        <form>
            Valor:
            <input type="number" placeholder="Empréstimo" name="em" value="<%=em%>"/>
            <br>
            <br>
            Percentual:
            <input type="number" placeholder="Percentual de juros" name="per" value="<%=per*100%>"/>
            <br>
            <br>
            Meses:
            <input type="number" placeholder="Parcelas mensais" name="mes"value="<%=mes%>" min="0"/>
            <input type="submit" value="Calcular"/>
            <br>
            
             <form id="formulario" autocomplete="off">
   
        
            <br>    
            <br>    
            
            <table class="table-price" border="thin">
                
                <tr><th>Período</th><th>Saldo Devedor</th><th>Parcela</th><th>Juros</th><th>Amortização</th></tr>
                
                <% for(int i = 0; i <= mes;i++){ %>
                
                    <%if(i == 0){%>

                    <tr><th><%=i%></th><th><%= deci.format(em) %></th><th>-</th><th>-</th><th>-</th></tr>
                    
                    <%}else{                       
                        
                        if(i > 1){
                        
                            juros = em * per;
                        }
                        em = (em - parcela)+juros;
                        amort = parcela - juros;
                        if(i == mes){
                        
                            em = 0;
                        }
                    
                    %>
                    
                      
                    <tr><th><%=i%></th><th min ="0"><%= deci.format(em) %></th><th><%= deci.format(parcela) %></th><th><%= deci.format(juros) %></th><th><%= deci.format(amort) %></th></tr>
                        
                        
                    <%}%>

                <%}%>
            </table>
            
            <br>
            
            <form action="index.jsp">
              <input type="submit" value="Voltar"/>
            </form>
        <footer>
            <%@include file="WEB-INF/jspf/footer.jspf"%>
        </footer>
        
    </body>
</html>