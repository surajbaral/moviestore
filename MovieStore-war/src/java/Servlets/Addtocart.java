/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logic.*;

/**
 *
 * @author Suraj
 */
@WebServlet(name = "Addtocart", urlPatterns = {"/Addtocart"})
public class Addtocart extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Cart shoppingCart;
        shoppingCart = (Cart) session.getAttribute("cart");
        if(shoppingCart == null){
          shoppingCart = new Cart();
          session.setAttribute("cart", shoppingCart);
        }
        String name = request.getParameter("moviename");
        Integer price = Integer.parseInt(request.getParameter("price"));
        shoppingCart.order(name, price);
        session.setAttribute("cart", shoppingCart);
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>result</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Movie successfully added to cart </h1>");
            out.println("<form action='mainpage.jsp'>Add more movie<input type='submit' value='go'></form>");
            out.println("<hr>");
            out.println("<h2>Cart</h2>");
            HashMap<String, Integer> items = shoppingCart.getCartItems();
            out.println("<table border='1px'>");
             
            for(String key: items.keySet()){
                out.println("<tr><td>"+key+" - </td><td>"+"$"+items.get(key)+"</td></tr>");
            }
            out.println("<table>");
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
