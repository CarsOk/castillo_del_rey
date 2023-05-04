<%-- 
    Document   : menu_principal_admin
    Created on : 14-abr-2023, 10:35:31
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Usuario"%>
<%@page import="Modelo.UsuarioDAO"%>
<%@page import="Clases.Conectar"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title> Menú principal admin</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="/proyectoADSI/CSS/menu_principal_admin.css" rel="stylesheet" type="text/css">
        <link rel="icon" href="../IMGENES/CR_LOGO_ico.ico">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    </head>
    <body>
        
        <div id="cont" class="container text-center">
            <div class="row">
                
                <header class="row">
                    <article id="logo" class="col-lg-3 col-md-4 col-sm-6 col-xs-12 mt-3">
                        <img src="/proyectoADSI/imagenes/cr_logo.png" width="30%" height="90%" alt="Logo de la institución">
                    </article>

                    <article id="titulo" class="col-lg-7 col-md-4 col-sm-6 col-xs-12 mt-3">
                        <h2><strong>Institución Educativa <br> Castillo del rey</strong></h2>
                    </article>

                    <article id="ft_perfil" class="col-lg col-md-4 col-sm-6 col-xs-12 mt-3">
                        <i class="bi bi-person-fill"></i>
                    </article>
                </header>
                
                <nav class="row mt-5">
                    <div class="col-3"></div>
                    <div class="col">
                        <a href="../HTML/usuario_docente.html" target="" class="btn btn-outline-dark">Usuarios Docente</a>
                        <a href="../HTML/asoc_asig_grados.html" target="" class="btn btn-outline-dark">Asociación Asignaturas a Grados</a>
                        <a href="../HTML/usuario_alumnos.html" target="" class="btn btn-outline-dark">Usuarios Alumnos</a>
                    </div>
                    <div class="col-3"></div>

                </nav>

                <section class="row mt-5">
                    <label id="wel">BIENVENIDO</label>
                </section>
            </div>
            <footer>
                <div class="col-lg-12 col-md-4 col-sm-6 col-xs-12">
                    <label id="texto" class="text-center">
                        Convenio <br>
                        Centro Educativo Integral Nueva Esperanza <br>
                        C.E.I.N.E <br>
                        Licencia de Funcionamiento 0707 del 23/11/2006 <br>
                        Código DANE: 0000000000000
                    </label>
                </div>
            </footer>
        </div>
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        
        <!--<div id="cont" class="container text-center">
            <div class="row">
                
                    <header id="gradient_h" class="row">
                        <nav class="row">
                            <article id="logo" class="col-3">
                                <img src="/proyectoADSI/imagenes/CR_LOGO.png" width="50%" height="90%" alt="Logo de la institución">
                            </article>
    
                            <article id="titulo" class="col-7 mt-5">
                                <h2><strong>Institución Educativa <br> Castillo del rey</strong></h2>
                            </article>
    
                            <article id="ft_perfil" class="col mt-5">
                                <span class="bi bi-person-fill"></span>
                            </article>
                        </nav>
                    </header>
                    
                    <div class="row mt-5">
                        <div class="col">
                            <form>
                                <div class="row">
                                    <div class="col">
                                        <input type="text" placeholder=" Buscar" class="form-control" id="caja_txt">
                                    </div>
                                    
                                    <div class="col-4">
                                        <button type="submit" value="  BUSCAR  " class="btn" id="btn_txt">BUSCAR</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        
                        <div class="col"></div>

                        <div class="col ">
                            <div class="row">
                                <div class="col">
                                    <a id="btn_asoc" class="btn btn-outline-light" href="asoc_asig_grados.html"target="" name="asoc_asig_grados">Asociación Asignaturas_Grados</a><br/>
                                </div>

                                <div class="col-3">
                                    <a class="delete_subray" href="crear_usuario.html" target="">
                                        <span id="n_user" class="icon icon-user-check"></span> 
                                        <div class="row">
                                            <label id="create_user">Nuevo Usuario</label>
                                        </div>                                          
                                    </a>
                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <br>

                    <div class="row">
                        <div class="col">
                            <table id="tabla" class="table table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">CÓDIGO</th>
                                        <th scope="col-2">NÚMERO DE DOCUMENTO</th>
                                        <th scope="col">ROL</th>
                                        <th scope="col-2">NOMBRE COMPLETO</th>
                                        <th scope="col">GRADO</th>
                                        <th scope="col">EDITAR</th>
                                        <th scope="col">PAGO</th>
                                        <th scope="col">ASISTENCIA</th>
                                        <th scope="col">NOTAS</th>
                                        <th scope="col">ASOCIACIÓN</th>
                                        <th scope="col">ASIGNATURA</th>
                                
                                    </tr>
                                </thead>

                                <tbody>
                                    <//c:forEach var="usu" items="$/{usuario}">
                                        <tr>
                                            <th scope="row">$/{usu.getCodigo()}</th>
                                            <td>$/{usu.getNum_documento()}</td>
                                            <td>$/{usu.getRol()}</td>
                                            <td>$/{usu.getNombre1()}</td>
                                            <td>$/{usu.getCod_grado()}</td>

                                            <td>
                                                <a class="delete_subray" href="editar_usuario.html"target="" name="editar">
                                                    <span class="icon icon-pencil"></span>
                                                </a><br/>
                                            </td>

                                            <td>
                                                <a class="delete_subray" href="pago_mensualidad.html" target="" name="pago">
                                                    <span class="icon icon-section"></span>
                                                </a>
                                            </td>

                                            <td>
                                                <a class="delete_subray" href="informe_asistencia_admin.html" target="" name="asistencia">
                                                    <span class="icon icon-checkbox-checked"></span>
                                                </a>
                                            </td>

                                            <td>
                                                <a class="delete_subray" href="informe_notas_admin.html" target="" name="notas">
                                                    <span class="icon icon-text-color"></span>
                                                </a>
                                            </td>

                                            <td>
                                                <a class="delete_subray" href="asoc_alumnos_grados.html" target="" name="asociacion">
                                                    <span class="icon icon-tab"></span>
                                                </a>
                                            </td>

                                            <td>
                                                <a class="delete_subray" href="asig_alumnos.html" target="" name="asociacion">
                                                    <span class="icon icon-tab"></span>
                                                </a>
                                            </td>
                                        </tr>
                                    <//c:forEach>
                                </tbody>
                            </table>
                        </div>
                </div>
            </div>
        </div>-->
        
        <!-- JavaScript Bundle with Popper 
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>-->
    </body>
</html>