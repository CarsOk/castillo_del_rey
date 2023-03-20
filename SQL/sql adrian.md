
 show databases;
 create database adrian;
 show databases;
 use adrian;
 create table carros(
     placa varchar(6),
     modelo integer,
     marca varchar(5),
     colores varchar(8), 
     propietario varchar(8)
     );
insert into carros value ("DDL23", 2000, "mazda", "rojo", "adrian " );
insert into carros value ("DDL23", 2000, "mazda", "rojo", "adrian " );
select * from carros;


 show databases;
 create database adrian;
 show databases;
 use adrian;
 create table carros(
     placa varchar(6),
     modelo integer,
     marca varchar(5),
     colores varchar(8), 
     propietario varchar(8),
     primary key(placa)
     );
insert into carros value ("DDL23", 2000, "mazda", "rojo", "adrian " );
insert into carros value ("DDL12", 2010, "mazda", "amarillo", "jhon " );
select * from carros;