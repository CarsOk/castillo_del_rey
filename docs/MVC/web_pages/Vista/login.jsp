<%-- 
    Document   : Login
    Created on : 13-abr-2023, 11:11:45
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
        <link href="/proyectoADSI/CSS/Login.css" rel="stylesheet" type="text/css">       
        <link rel="icon" href="/proyectoADSI/imagenes/CR_LOGO_ico.ico">
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        
        <!-- CSS only 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">-->
    </head>
    
    <% String Mensaje = "";
    if(request.getParameter("ingreso") != null){//Si la variable ingreso es diferente de nulo, es decir trae informacion
        int i = Integer.parseInt(request.getParameter("ingreso"));//Convertimos la variable a tipo numero
        if(i == 0){
            Mensaje = "Incorrect user or password";
        }
    }
    %>
    
    <body>
            <!--<main id="cont">
                <div class="row">   
                        <nav class="col-6">
                            <div id="desc" class="row text-center">
                                <label>Institución Educativa <br> Castillo del Rey</label>

                                <div class="col-3"></div>
                                <img src="/proyectoADSI/imagenes/CR_LOGO.png" id="logo" alt="Logo de la institución">
                            </div>  
                        </nav>
                    
                        <section class="col-4 text-center">
                            <form action="/proyectoADSI/CtrValidar" method="post">
                                <div class="row">
                                    <div id="wel" class="row">
                                        <label>BIENVENIDO</label>
                                    </div>

                                    <p><input type="text" name="txtuser" class="form-control"  required placeholder="Usuario"></p>
                                    <p><input type="password" name="txtpass" class="form-control" required placeholder="Contrase&ntilde;a"></p>
                                </div>

                                <div class="col text-center mb-3">
                                    <input type="submit" name="accion" class="btn btn-outline-dark"  value="INICIAR SESIÓN">
                                    <p style="color: red;"></%=Mensaje%></p><!--El = es como sout, es para imprimir en pantalla-->
                                <!--</div>
                            </form>
                        </section>
                        
                </div>
            </main>-->
                                
            <div class="container mt-4 col-lg-4 ">
                <div class="card col-sm-10">
                    <div class="card-body">
                        <form class="form-sing" action="/proyectoADSI/CtrValidar" method="post">
                            <div class="form-group text-center">
                                <h3>Login</h3> 
                                <label>WELCOME</label>
                                <br>
                                <img src="/proyectoADSI/imagenes/CR_LOGO.png" id="logo" alt="Logo de la institución">
                            </div>
                            <div class="form-group">
                                <label>User</label>
                                <input type="text" name="txtuser" class="form-control">
                            </div>

                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="txtpass" class="form-control">
                            </div>
                            <br>
                            <center>
                                <input type="submit" name="accion" value="Ingresar" class="btn btn-primary"><br>
                                <a href="#">Recordar Contraseña</a><br>
                                <a href="#">Registrarse</a>
                                <p style="color: red;"><%=Mensaje%></p><!--El = es como sout, es para imprimir en pantalla-->
                            </center>
                        </form>
                    </div>
                </div>
            </div>

        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </body>
</html>
