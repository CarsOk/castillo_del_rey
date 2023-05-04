package docs.MVC.Modelo;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Acer
 */
public class Usuario {
    int codigo;
    String rol;
    String tipo_documento;
    int num_documento;
    String usuario;
    String contrasena;
    String nombre1;
    String nombre2;
    String apellido1;
    String apellido2;
    int edad;
    String sexo;
    String lugar_nacimiento;
    String fecha_nacimiento;
    int telefono;
    String direccion;
    String eps;
    String correo;
    String form_academica;
    int cod_grado;

    public Usuario() {
    }

    public Usuario(int codigo, String rol, String tipo_documento, int num_documento, String usuario, String contrasena, String nombre1, String nombre2, String apellido1, String apellido2, int edad, String sexo, String lugar_nacimiento, String fecha_nacimiento, int telefono, String direccion, String eps, String correo, String form_academica, int cod_grado) {
        this.codigo = codigo;
        this.rol = rol;
        this.tipo_documento = tipo_documento;
        this.num_documento = num_documento;
        this.usuario = usuario;
        this.contrasena = contrasena;
        this.nombre1 = nombre1;
        this.nombre2 = nombre2;
        this.apellido1 = apellido1;
        this.apellido2 = apellido2;
        this.edad = edad;
        this.sexo = sexo;
        this.lugar_nacimiento = lugar_nacimiento;
        this.fecha_nacimiento = fecha_nacimiento;
        this.telefono = telefono;
        this.direccion = direccion;
        this.eps = eps;
        this.correo = correo;
        this.form_academica = form_academica;
        this.cod_grado = cod_grado;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getTipo_documento() {
        return tipo_documento;
    }

    public void setTipo_documento(String tipo_documento) {
        this.tipo_documento = tipo_documento;
    }

    public int getNum_documento() {
        return num_documento;
    }

    public void setNum_documento(int num_documento) {
        this.num_documento = num_documento;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getNombre1() {
        return nombre1;
    }

    public void setNombre1(String nombre1) {
        this.nombre1 = nombre1;
    }

    public String getNombre2() {
        return nombre2;
    }

    public void setNombre2(String nombre2) {
        this.nombre2 = nombre2;
    }

    public String getApellido1() {
        return apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getApellido2() {
        return apellido2;
    }

    public void setApellido2(String apellido2) {
        this.apellido2 = apellido2;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getLugar_nacimiento() {
        return lugar_nacimiento;
    }

    public void setLugar_nacimiento(String lugar_nacimiento) {
        this.lugar_nacimiento = lugar_nacimiento;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEps() {
        return eps;
    }

    public void setEps(String eps) {
        this.eps = eps;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getForm_academica() {
        return form_academica;
    }

    public void setForm_academica(String form_academica) {
        this.form_academica = form_academica;
    }

    public int getCod_grado() {
        return cod_grado;
    }

    public void setCod_grado(int cod_grado) {
        this.cod_grado = cod_grado;
    }
    
    
    
    
}
