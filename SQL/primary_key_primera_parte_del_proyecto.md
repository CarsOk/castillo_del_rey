mysql -u root -p

show databases;
create database c_rey;
use c_rey;


create table datos_alum(cod_tipo_doc_ident integer, 
  cod_doc_ident integer,
  nombres varchar(11), apellidos varchar(11),
  edad integer, direccion varchar(15), 
  telefono integer, eps varchar(15), 
  correo varchar(15), nom_acud varchar(11),
  apell_acud varchar(11), edad_acud integer,
    primary key(cod_tipo_doc_ident, cod_doc_ident));

show tables;

desc datos_alum;

insert into datos_alum value (4, 104566783, 'CAMILO DAVID', 
 'CORTEZ GARCIA', 3, 
 'CALLE 23 #58 345', 3098789345, 
 'Salud Colmena', 'camilocortezg@gmail.com', 'FERNANDO', 'CORTEZ', 30);

select * from datos_alum;

create table tipos_doc_identidad(cod_doc_ident integer, 
  cod_tipo_doc_ident varchar(3),
     primary key(cod_doc_ident, cod_tipo_doc_ident));

insert into datos_alum value(4, 1043221556, '
 CAMILO DAVID', 'CORTEZ GARCIA', 3, 
 'CALLE 23 #58 345',3098789345, 'Salud Colmena', 
 'camilocortezg@gmail.com', 'FERNANDO DAVID', 'CORTEZ MENDEZ', 30);

select * from datos_alum;

> repetir la iinfromacion
 insert into datos_alum value(4, 1043221556, 'CAMILO DAVID',
  'CORTEZ GARCIA', 3, 
  'CALLE 23 #58 345',3098789345, 
  'Salud Colmena', 'camilocortezg@gmail.com', 
  'FERNANDO DAVID', 'CORTEZ MENDEZ', 30);

> infromacion correcta
insert into datos_alum value(3, 1043221556, 
 'CAMILO DAVID', 'CORTEZ GARCIA', 3, 'CALLE 23 #58 345',3098789345, 
 'Salud Colmena', 'camilocortezg@gmail.com', 
 'FERNANDO DAVID', 'CORTEZ MENDEZ', 30);

select * from datos_alum;

insert into tipos_doc_identidad value(1, 'TI');

insert into tipos_doc_identidad value(2, 'CC');

insert into tipos_doc_identidad value(3, 'CE');

insert into tipos_doc_identidad value(4, 'SIN TI');

