<%-- 
    Document   : usuario_alumno
    Created on : 02-may-2023, 22:56:41
    Author     : Acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuarios Alumnos</title>
    <link href="/proyectoADSI/CSS/usuario_alumno.css" rel="stylesheet" type="text/css">
    <link rel="icon" href="../IMGENES/CR_LOGO_ico.ico">
    <!--Icons-->
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
                    <i class="bi bi-person-circle"></i>
                </article>
            </header>
        </div>

        <nav class="row mt-5">
            <div class="col-1"></div>
            <div class="col-lg-4">
                <form action="/proyectoADSI/CtrUsuario?accion=buscarAlumnos" method="POST">
                    <div class="row">
                        <div class="col">
                            <input type="text" placeholder="Buscar" class="form-control" id="caja_txt">
                        </div>
                        
                        <div class="col-lg-4">
                            <button type="submit" value="buscarAlumnos" class="btn btn-warning" id="btn_txt" name="btn_txt">Buscar</button><!--EL nombre que esta en name="busq", es el mismo que esta en el CtrProducto en case:buscar -->
                        </div>
                    </div>
                </form>
            </div>
            
            <div class="col-lg-5"></div>

            <div class="col">
                <div class="col">
                    <abbr title="Crear Usuario"><a class="btn btn-light" id="delete_subray"  href="/proyectoADSI/Vistas/crear_usuario_alumno.jsp" target=""><i class="bi bi-person-fill-add"></i></a></abbr>
                        

                </div>
            </div>
            <div class="col-1"></div>
        </nav>

        <section class="row mt-3">
            <div class="col-1"></div>
            <div class="col">
                <label id="titulo">ESTUDIANTES</label>
                <table id="tabla" class="table mt-2">
                    <thead class="table-light">
                        <tr>
                            <th scope="col">Código</th>
                            <th scope="col-2">Número de documento</th>
                            <th scope="col-2">Nombres</th>
                            <th scope="col-2">Apellidos</th>
                            <th scope="col">Grado</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach var="usu" items="${usuAlumno}">
                            <tr>
                                <th scope="row">${usu.getCodigo()}</th>
                                <td>${usu.getNum_documento()}</td>
                                <td>${usu.getNombre1()} ${usu.getNombre2()}</td>
                                <td>${usu.getApellido1()} ${usu.getApellido2()}</td>
                                <td>${usu.getCod_grado()}</td>
                                <td>
                                    <abbr title="Editar usuario"><a href="" target="" class="btn btn-outline-warning"><i class="bi bi-pencil-fill"></i></a></abbr>
                                    <abbr title="Eliminar usuario"><a href="" target="" class="btn btn-outline-danger"><i class="bi bi-trash3"></i></a></abbr>
                                    <abbr title="Pagos"><a href="" target="" class="btn btn-outline-info"><i class="bi bi-coin"></i></a></abbr>
                                    <abbr title="Informe de asistencia"><a href="" target="" class="btn btn-outline-dark"><i class="bi bi-calendar-check"></i></a></abbr>
                                    <abbr title="Informe de notas"><a href="" target="" class="btn btn-outline-secondary"><i class="bi bi-journal-plus"></i></a></abbr>
                                    <abbr title="Asociación alumno a grado"><a href="" target="" class="btn btn-outline-success"><i class="bi bi-arrow-left-right"></i></a></abbr>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="col-1"></div>
        </section>

        <!--<footer>
            <div class="col-lg-12 col-md-4 col-sm-6 col-xs-12">
                <label id="texto" class="text-center">
                    Convenio <br>
                    Centro Educativo Integral Nueva Esperanza <br>
                    C.E.I.N.E <br>
                    Licencia de Funcionamiento 0707 del 23/11/2006 <br>
                    Código DANE: 0000000000000
                </label>
            </div>
        </footer>-->
    </div>
</body>
</html>