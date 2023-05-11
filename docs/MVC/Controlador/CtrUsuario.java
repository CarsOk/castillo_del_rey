/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Usuario;
import Modelo.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mere
 */
@WebServlet(name = "CtrUsuario", urlPatterns = {"/CtrUsuario"})
public class CtrUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    UsuarioDAO dao = new UsuarioDAO();
    List<Usuario> usuario = new ArrayList();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CtrUsuario</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CtrUsuario at " + request.getContextPath() + "</h1>");
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
        
            HttpSession sesion = request.getSession();
            Usuario us = new Usuario();
            String accion = request.getParameter("accion");
            List<Usuario> list = dao.listarAlumnos();
            List<Usuario> listD = dao.listarDocentes();
            String rol, tipo_doc, user, pass, name1, name2, ape1, ape2, sexo, eps, lugar_nac, fecha_nac, dir, email, f_academica;
            int num_doc, edad, tel ;
            switch(accion){
                case "ListarAlumnos":
                list = dao.listarAlumnos();
                request.setAttribute("usuAlumno", list);
                request.getRequestDispatcher("Vistas/usuario_alumno.jsp").forward(request, response);
                break;
                
                case "ListarDocentes":
                    list = dao.listarDocentes() ;
                    request.setAttribute("usuDocente", listD);
                    request.getRequestDispatcher("Vistas/usuario_docente.jsp").forward(request, response);
                break;
                
                case "buscarAlumnos":
                    String nombre = request.getParameter("busq");
                    usuario = dao.BuscarAlum(nombre);
                    request.setAttribute("usuarioAlum", usuario);
                    request.getRequestDispatcher("Vistas/usuario_alumno.jsp").forward(request, response);
                break;
                case "nuevoAlum":
                    rol = request.getParameter("rol");
                    tipo_doc = request.getParameter("tipo_doc");
                    //num_doc = Integer.parseInt(request.getParameter("num_doc"));
                    user = request.getParameter("usuario");
                    pass = request.getParameter("contrasena");
                    name1 = request.getParameter("name1");
                    name2 = request.getParameter("name2");
                    ape1 = request.getParameter("ape1");
                    ape2 = request.getParameter("ape2");
                    //edad = request.getParameter("edad");
                    sexo = request.getParameter("sexo");
                    eps = request.getParameter("eps");
                    lugar_nac = request.getParameter("lugar_nac");
                    fecha_nac = request.getParameter("fecha_nac");
                    //tel = Integer.parseInt(request.getParameter("tel"));
                    dir = request.getParameter("dir");
                    us.setRol(rol);
                    us.setTipo_documento(tipo_doc);
                    //us.setNum_documento(num_doc);
                    us.setUsuario(user);
                    us.setContrasena(pass);
                    us.setNombre1(name1);
                    us.setNombre2(name2);
                    us.setApellido1(ape1);
                    us.setApellido2(ape2);
                    //us.setEdad(0);
                    us.setSexo(sexo);
                    us.setEps(eps);
                    us.setLugar_nacimiento(lugar_nac);
                    us.setFecha_nacimiento(fecha_nac);
                    //us.setTelefono(0);
                    us.setDireccion(dir);
                    dao.crearUsuarioAlum(us);
                    list = dao.listarAlumnos();
                    request.setAttribute("listAlumno", list);
                    request.getRequestDispatcher("Vistas/crear_usuario_alumno.jsp").forward(request, response);
                    break;
                    
                case "nuevoDoc":
                    rol = request.getParameter("rol"); //Obtenemos el rol que se selecciona en "ROL" en crearUsuarioDocente 
                    user = request.getParameter("usuario");//Obtengo lo que se ingresa (el usuario) por el input que tiene como id "usuario", que esta en crearUsuarioDocente, y user, lo guarda. igual el resto
                    name2 = request.getParameter("name2");
                    email = request.getParameter("correo");
                    lugar_nac = request.getParameter("lugar_nac");
                    tipo_doc = request.getParameter("tipo_doc");
                    pass = request.getParameter("pass");
                    ape1 = request.getParameter("ape1");
                    edad = Integer.parseInt(request.getParameter("edad"));
                    fecha_nac = request.getParameter("fecha_nac");
                    num_doc = Integer.parseInt(request.getParameter("num_doc"));
                    name1 = request.getParameter("name1");
                    ape2 = request.getParameter("ape2"); 
                    sexo = request.getParameter("sexo");
                    tel = Integer.parseInt(request.getParameter("tel"));
                    dir = request.getParameter("direc");
                    f_academica = request.getParameter("f_academica");
                    
                    us.setRol(rol);//El rol que obtuvimos, se lo asignamos al objeto (instancia) que creamos de Usuario. (Rol)= Es la variable
                    us.setUsuario(user);
                    us.setNombre2(name2);
                    us.setCorreo(email);
                    us.setLugar_nacimiento(lugar_nac);
                    us.setTipo_documento(tipo_doc);
                    us.setContrasena(pass);
                    us.setApellido1(ape1);
                    us.setEdad(edad);
                    us.setFecha_nacimiento(fecha_nac);
                    us.setNum_documento(num_doc);
                    us.setNombre1(name1);
                    us.setApellido2(ape2);
                    us.setSexo(sexo);
                    us.setTelefono(tel);
                    us.setDireccion(dir);
                    us.setForm_academica(f_academica);
                    
                    dao.crearUsuarioDoc(us);
                    listD = dao.listarDocentes();
                    request.setAttribute("usuDocente", listD);
                    request.getRequestDispatcher("Vistas/usuario_docente.jsp").forward(request, response);
                    break;
                default:
            }            
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
