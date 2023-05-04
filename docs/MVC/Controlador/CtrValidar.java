/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package docs.MVC.Controlador;

import docs.MVC.Modelo.Usuario;
import docs.MVC.Modelo.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Acer
 */
public class CtrValidar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    //Instancio un objeto del modelo UsuarioDAO y Usuario
    UsuarioDAO usudao = new UsuarioDAO();
    Usuario us = new Usuario();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CtrValidar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CtrValidar at " + request.getContextPath() + "</h1>");
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
        
        
        //Trabajamos en el post, porque el en login el method, dice post <<en el form>>
        String accion = request.getParameter("accion");//Devuelvame lo (la informacion) que tiene el boton accion---- accion es el name del submit
        if(accion.equalsIgnoreCase("Ingresar")){
            /*equalsIgnoreCase: Compara dos strings para ver si son iguales ignorando las diferencias entre mayúsculas y minúsculas. 
            Este método es necesario porque no es posible comparar strings usando el operador de igualdad (==). 
            Retorna true si los strings son iguales y false si no lo son.*/
            
            HttpSession sesion = request.getSession();//Variable tipo sesion que va a ser igual a la sesion que se ingrese 
            
            String usu = request.getParameter("txtuser");//usu va hacer igual a lo que se obtenga en el txtuser
            String pas = request.getParameter("txtpass");
            /*request.
            Sirve para tomar la sesion del usuario y almacenarla en una variable de tipo HttpSession.*/
            
            us = usudao.Validar(usu, pas);
            if(us.getUsuario() != null){//si esto es diferente de null, es decir tiene nformación
                sesion.setAttribute("log", 1);//Es para saber si ya ingreseo. creo la variable log, si está en 1, es porque ya ingreso
                sesion.setAttribute("user", us.getUsuario());//Obtengo el usuario de quien ingreso
                sesion.setAttribute("codigo", us.getCodigo());//Obtengo el codigo de quien ingreso
                sesion.setAttribute("rol", us.getRol());//Obtengo el rol de quien ingreso
                sesion.setAttribute("usuario", us);//Tomo toda la información que el usuario tiene
                
                if(us.getRol().equals("ADMINISTRADOR")){//si el tipo del usuario que ingreso es igual a Administrador
                    //Se envia hacia la vista
                    //La vista hace un request, y la vista un response
                    //response.sendRedirect("/proyectoADSI/Vistas/menu_principal_admin.jsp");/*Esto redirecciona a la vista.
                    //Voy a responder enviando a una direccion.*/
                    response.sendRedirect("/proyectoADSI/CtrUsuario?accion=Listar");
                }
                //Pruebo equalsIgnoreCase, para ver si ignora las mayusculas
                if(us.getRol().equalsIgnoreCase("Docente")){//si el tipo del usuario que ingreso es Docente
                    response.sendRedirect("/proyectoADSI/Vistas/menu_principal_docente.jsp");/*Esto redirecciona a la vista.
                    Voy a responder enviando a una direccion.*/
                }
                if(us.getRol().equals("ESTUDIANTE")){//si el tipo del usuario que ingreso es Docente
                    response.sendRedirect("/proyectoADSI/Vistas/menu_principal_alumno.jsp");/*Esto redirecciona a la vista.
                    Voy a responder enviando a una direccion.*/
                }
            }else{//Si el usuario y contraseña son incorrectos o no esta registrado, haga esto:
                //Lo rediecciona nuevamente al login
                    
                response.sendRedirect("/proyectoADSI/Vistas/Login.jsp?ingreso=0");//El signo de ? es un parametro, va hacer una variable que se llama ingreso y tiene un valor de 0
                System.out.println("Entró aquí, en el else si el user esta mal");
            }
        }
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
