/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
//import java.Servlets.*;
/**
 * 
 *
 * @author Suraj
 */
public class MailApp extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
     //Database Connection to retrieve user's email need to be done...
  
    
         
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        
//        
//        Connection con = null;
//         Statement stmt = null;
//         ResultSet rs = null;
//
//        con = ConnectionManager.getConnection();
//        stmt = con.createStatement();
//        rs = stmt.executeQuery("select * from movies;");
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MailApp</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MailApp at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //processRequest(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
      
        String mname = request.getParameter("moviename");
       
       String to = "suraj3402.sb@gmail.com";
       //String to ="katmanlukash@gmail.com";
//        String to = request.getParameter("to");
        String CC = "govindbaral89@gmail.com";
//        String CC1 = "katmanlukash@gmail.com";// must add multiple users in CC
        String subject = "Movie Alert !!";
//        String subject = request.getParameter("subject");
        String message =  "This mail is to notify you about the addition of new movie____"+ mname +". Feel free to visit by..";
//        String message =  request.getParameter("message");
        String user = "moooviestoreee@gmail.com";
//        String user = request.getParameter("user");
        String pass = "Bookmovie";
        SendMail.send(to,CC,subject, message, user, pass);
        out.println("Mail sent successfully");
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
