/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.DecimalFormat;

/**
 *
 * @author Ana Julia
 */
@WebServlet(name = "JurosCompostoServlet", urlPatterns = {"/juros-composto.html"})
public class JurosCompostoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JurosCompostoServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Juros Composto Servlet</h1>");
            out.println("</body>");
            out.println("</html>");
            
            DecimalFormat deci = new DecimalFormat("0.00");
            double VA, TAXA;
            int MESES;
            double resultado;
            
            
                try{

                    VA = Double.parseDouble(request.getParameter("VA"));
                    TAXA = Double.parseDouble(request.getParameter("TAXA"));
                    MESES = Integer.parseInt(request.getParameter("MESES"));   

                    resultado = VA * Math.pow((1+TAXA),MESES);
               
                   
                    out.println("<h4> Valor Atual: </h4>"+VA);
                    out.println("<h4> Período em meses:</h4>"+MESES);
                    out.println("<h4> Taxa de juros:</h4>"+TAXA);
                    
                    
                    out.println("<h4> Resultado:</h4>"+(deci.format(resultado)));

                }catch(Exception ex){
                    out.println("<p style = 'color:red'>Erro ao ler parâmetro: "+ex.getMessage()+"<p>");
                }
                out.println("<h3><a href='index.html'> Voltar </a></h3>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}