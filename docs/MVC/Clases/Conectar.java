package docs.MVC.Clases;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conectar {
    private String driver="com.mysql.jdbc.Driver";//el driver que se va a utilizar, en este caso el que esta en la libreria(mysql)
    private String cadenaConexion="jdbc:mysql://localhost/proyecto";//Donde se va a especificar el nombre de la base de datos a la que me voy a conectar, en que servidor esta(en este caso localhost) y despues el nombre
    //Si el puerto de localhost es diferente al 3306, hay que especificarlo, ej: //localhost:3307
    private String usuario="root";//el usuario con el que se inicia en xamp
    private String contrasena="";//con que contraseña se van a conectar
    public Connection con;//
    
    
    //Metodo constructor a la base de datos
    public Conectar(){
        try{
            Class.forName(driver);
            //Mando hacer la conexion
            con = DriverManager.getConnection(cadenaConexion, usuario, contrasena);//a la variable con le asigno la conexion que se obtenga de la cadenaConexion, con tal usuaurio y tal contraseña
            //Pregunto si se conecto la conexion
            if (con != null){
                System.out.println("Se conecto a la base de datos");
            }
        }catch(Exception e){
            System.out.println("ERROR al conectarse a la base de datos "+e);
        }
    }
    
    //Metodo para conectar
    public Connection crearConexion(){
        return con;
    }
    
    //Metodo para desconectar
    public void desconectar(){
        con = null;
        if(con == null){
            System.out.println("Se desconecto de la base de datos");
        }
    }
    
}
