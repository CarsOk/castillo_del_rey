package Modelo;

import Clases.Conectar;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {
    Connection con;//Connection representa una conexión física con la fuente de datos.
    PreparedStatement pstm;//Es para hacer consultas SQL
    Conectar cone;//Esta es la clase
    ResultSet rs; //ResultSet proporciona varios métodos para obtener los datos de columna correspondientes a un fila
    Usuario usua;
    Statement stm;
    
    public Usuario Validar(String usu, String pass){
        usua = new Usuario();//Estoy creando un objeto del modelo usuario
        try {
            cone = new Conectar();//Creo un objeto de Conectar
            con = cone.crearConexion();
            if(con != null){//Se pregunta si se hizo la conexion, si "con" trae información
                System.out.println("Se establecio conexión con la BD");
            }
            pstm = con.prepareStatement("select * from usuarios where usuario = ? and contrasena = ?");
            pstm.setString(1, usu);//Aquí cambiamos el primer ?(parametro) que se hace por el 1
            pstm.setString(2, pass);//Aquí cambiamos el segundo ?(parametro) que se hace por el 2
            rs = pstm.executeQuery();//Para ejecutar la consulta que se hizo arriba, y rs captura esa consulta
            while(rs.next()){//Mientras rs tenga información
                if(!rs.getString("usuario").equals(""));{//Si al hacer esa consulta el campo usuario tiene información, (es decir, es diferente a vacio), hago esto:
                    /*usua es un objecto de la clase Usuario que cree en modelo, tiene set y get,
                    por medio del set estoy asignando al codigo, lo que tiene el codigo(de la BD), igual con el resto*/
                usua.setCodigo(rs.getInt("codigo"));
                usua.setRol(rs.getString("rol"));
                usua.setTipo_documento(rs.getString("tipo_documento"));
                usua.setNum_documento(rs.getInt("num_documento"));
                usua.setUsuario(rs.getString("usuario"));
                usua.setContrasena(rs.getString("contrasena"));
                usua.setNombre1(rs.getString("nombre1"));
                usua.setNombre2(rs.getString("nombre2"));
                usua.setApellido1(rs.getString("apellido1"));
                usua.setApellido2(rs.getString("apellido2"));
                usua.setEdad(rs.getInt("edad"));
                usua.setSexo(rs.getString("sexo"));
                usua.setLugar_nacimiento(rs.getString("lugar_nacimiento"));
                usua.setFecha_nacimiento(rs.getString("fecha_nacimiento"));
                usua.setTelefono(rs.getInt("telefono"));
                usua.setDireccion(rs.getString("direccion"));
                usua.setEps(rs.getString("eps"));
                usua.setCorreo(rs.getString("correo"));
                usua.setForm_academica(rs.getString("formacion_academica"));
                usua.setCod_grado(rs.getInt("cod_grado"));
                
                
                
            }
            }
        } catch (Exception e) {
            System.out.println("Error al conectarse con la BD "+e);
        }
        //Retorna un usuario
        return usua;
    }
    
    public List listarAlumnos(){
        ArrayList<Usuario> list = new ArrayList<>();
        try {
            cone = new Conectar();
            con = cone.crearConexion();
            if( con != null){
                System.out.println("Se establecio conexión con la BD");
            }
            pstm = con.prepareStatement("SELECT * FROM usuarios WHERE rol = \"Estudiante\" ");
            rs = pstm.executeQuery();
            while(rs.next()){
                usua = new Usuario();
                //Se comienza a guardar la información
                /*usua es la clase Usuario que cree en modelo, tiene set y get,
                por medio del set estoy asignando al codigo, lo que tiene el codigo en la bd, que hace referencia al (1), igual con el resto*/
                usua.setCodigo(rs.getInt(1));
                usua.setRol(rs.getString(2));
                usua.setTipo_documento(rs.getString(3));
                usua.setNum_documento(rs.getInt(4));
                usua.setUsuario(rs.getString(5));
                usua.setContrasena(rs.getString(6));
                usua.setNombre1(rs.getString(7));
                usua.setNombre2(rs.getString(8));
                usua.setApellido1(rs.getString(9));
                usua.setApellido2(rs.getString(10));
                usua.setEdad(rs.getInt(11));
                usua.setSexo(rs.getString(12));
                usua.setLugar_nacimiento(rs.getString(13));
                usua.setFecha_nacimiento(rs.getString(14));
                usua.setTelefono(rs.getInt(15));
                usua.setDireccion(rs.getString(16));
                usua.setEps(rs.getString(17));
                usua.setCorreo(rs.getString(18));
                usua.setForm_academica(rs.getString(19));
                usua.setCod_grado(rs.getInt(20));
                list.add(usua);
                
            }
        } catch (Exception e) {
            System.out.println("Error al conectarse con la BD "+e);
        }
        return list;
    }
    
    public List listarDocentes(){
        ArrayList<Usuario> list = new ArrayList<>();
        try {
            cone = new Conectar();
            con = cone.crearConexion();
            if(con != null){//Se pregunta si se hizo la conexión
                System.out.println("Se establecio una conexión con la BD");
            }
            pstm = con.prepareStatement("SELECT * FROM usuarios WHERE rol = \"Docente\"");//Nos muestra todos los usuarios que estan en la tabla usuario
            rs = pstm.executeQuery();
            
            while(rs.next()){
                usua = new Usuario();
                //Se comienza a guardar la información
                /*usua es la clase Usuario que cree en modelo, tiene set y get,
                por medio del set estoy asignando al codigo, lo que tiene el codigo en la bd, que hace referencia al (1), (porque codigo esta en la posicion 1), igual con el resto*/
                usua.setCodigo(rs.getInt(1));
                usua.setRol(rs.getString(2));
                usua.setTipo_documento(rs.getString(3));
                usua.setNum_documento(rs.getInt(4));
                usua.setUsuario(rs.getString(5));
                usua.setContrasena(rs.getString(6));
                usua.setNombre1(rs.getString(7));
                usua.setNombre2(rs.getString(8));
                usua.setApellido1(rs.getString(9));
                usua.setApellido2(rs.getString(10));
                usua.setEdad(rs.getInt(11));
                usua.setSexo(rs.getString(12));
                usua.setLugar_nacimiento(rs.getString(13));
                usua.setFecha_nacimiento(rs.getString(14));
                usua.setTelefono(rs.getInt(15));
                usua.setDireccion(rs.getString(16));
                usua.setEps(rs.getString(17));
                usua.setCorreo(rs.getString(18));
                usua.setForm_academica(rs.getString(19));
                usua.setCod_grado(rs.getInt(20));
                list.add(usua);
                
            }
        } catch (Exception e) {
            System.out.println("Error al conectarse con la BD "+e);
        }
        return list;
    }
    
}
