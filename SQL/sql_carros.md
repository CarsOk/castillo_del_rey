mysql -u root -p

show databases;
create database carro;
show databases;
use carro;

 create table car(placa varchar(6), 
 cod_tipo_doc integer, 
 doc_iden integer, 
 year integer, 
 cod_marcas integer, 
 cod_lineas integer, 
 cod_colores varchar(11), 
 motor varchar(20));

 show tables;
  desc car;

create table propietarios(cod_doc_iden integer, 
cod_tipo_doc integer, 
nombre varchar(10),
telefono integer, 
direccion varchar(15), 
correo varchar(25));

create table marcas(cod_marcas integer, marcas varchar(20));

 create table lineas(cod_linea integer, cod_marca integer, linea varchar(20));
 show tables;
 desc lineas;

 create table tipos_doc(cod_tipo_doc integer, d_i varchar (10));
show tables;
desc tipos_doc;

create table colores(cod_color varchar(3), color varchar(11));
desc colores;