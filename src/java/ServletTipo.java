/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.Tipos;

/**
 *
 * @author emanuel
 */
@WebServlet(urlPatterns = {"/ServletTipo"})
public class ServletTipo extends HttpServlet {

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
            if (request.getParameter("eliminar")!=null) {
               int id=Integer.parseInt(request.getParameter("eliminar"));
               Tipos typ=new Tipos();
               typ.setTipo_id(id);
               typ.BorrarTipos();
               response.sendRedirect("Tipo/index.jsp");

            } else if (request.getParameter("guardar3") != null) {
                String nombre = request.getParameter("nombre");
                int habilidad = Integer.parseInt(request.getParameter("habilidad"));
                Tipos typ = new Tipos();
                typ.setNombre(nombre);
                typ.setHabilidad(habilidad);
                typ.GuardarTipos();
                response.sendRedirect("Tipos/index.jsp");
                
            }else if(request.getParameter("editar3") != null){
                int tipo_id = Integer.parseInt(request.getParameter("id"));
                String Nombre = request.getParameter("nombre");
                int habilidad = Integer.parseInt(request.getParameter("habilidad"));

                Tipos typ=new Tipos();
                
                typ.setTipo_id(tipo_id);
                typ.setNombre(Nombre);
                typ.setHabilidad(habilidad);
                typ.ActualizarTipos();
                response.sendRedirect("Tipo/index.jsp");
            }
        
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
