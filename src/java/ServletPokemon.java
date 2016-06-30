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
import negocio.Pokemon;

@WebServlet(urlPatterns = {"/ServletPokemon"})
public class ServletPokemon extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       try (PrintWriter out = response.getWriter()) {
            

            if (request.getParameter("eliminar")!=null) {
                int id=Integer.parseInt(request.getParameter("eliminar"));
                out.println("Eliminar ID:"+id);
                Pokemon pok=new Pokemon();
                pok.setPokemon_id(id);
                pok.BorrarPokemon();
                response.sendRedirect("Pokemon/index.jsp");
                
            } else if(request.getParameter("guardar2") != null) {
                String Nombre=request.getParameter("nombre");
                int Numero=Integer.parseInt(request.getParameter("numero"));
                String fecha=request.getParameter("fecha");
                int Tipo=Integer.parseInt(request.getParameter("tipo"));
                int Creado=Integer.parseInt(request.getParameter("creado"));
                int Ciudad_id=Integer.parseInt(request.getParameter("ciudad"));
                
                Pokemon pok = new Pokemon();
                pok.setNombre(Nombre);
                pok.setNumero(Numero);
                pok.setFecha_nacimiento(fecha);
                pok.setTipo_id(Tipo);
                pok.setCreado_por(Creado);
                pok.setCiudad_id(Ciudad_id);
                pok.save();
                
                response.sendRedirect("Pokemon/index.jsp");
                
                

            }else if(request.getParameter("editar2") != null){
                int pokemon_id=Integer.parseInt(request.getParameter("id"));
                String Nombre=request.getParameter("nombre");
                int Numero=Integer.parseInt(request.getParameter("numero"));
                String fecha=request.getParameter("fecha");
                int Tipo=Integer.parseInt(request.getParameter("tipo"));
                int Creado=Integer.parseInt(request.getParameter("creado"));
                int ciudad_id=Integer.parseInt(request.getParameter("ciudad_id"));
                Pokemon pok = new Pokemon();
                pok.setPokemon_id(pokemon_id);
                pok.setNombre(Nombre);
                pok.setNumero(Numero);
                pok.setFecha_nacimiento(fecha);
                pok.setTipo_id(Tipo);
                pok.setCreado_por(Creado);
                pok.setCiudad_id(ciudad_id);
                pok.ActualizarPokemon();

                response.sendRedirect("Pokemon/index.jsp");
                
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
