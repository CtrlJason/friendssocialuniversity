create database universityandfriends;
use universityandfriends;
create  table registro(
codigoestudiante int primary key not null,
nombre varchar(100),
apellido varchar (100), 
correo varchar(100),
contraseña varchar(100),
nick varchar(100) unique  not null,
idcarrera int,
fechadenacimiento date,
idgenero int,
foreign key (idcarrera) references carrera(idcarrera),
foreign key (idgenero) references genero(idgenero) 
);

select *from registro;
drop table registro;
create  table genero(
idgenero int primary key not null,
genero varchar(100)
);
create  table carrera(
idcarrera int primary key not null,
carrera varchar(100),
semestre int
);
create table usuario(
id  int auto_increment primary key,
idestudiante int,
idgustos int,
idgenerousuario int,
idcarrerausuario int,
foreign key(idestudiante) references registro(codigoestudiante),
foreign key (idgustos) references gustos(idgustos),
foreign key (idgenerousuario) references genero(idgenero),
foreign key (idcarrerausuario) references carrera(idcarrera)
);

select *from usuario;
drop table usuario;
create table gustos(
idgustos int primary key,
gustos varchar (100)
);
create table chat(
id int auto_increment primary key,
enviado int,
recibido int,
mensaje text,
foreign key(enviado) references registro(codigoestudiante ),
foreign key(recibido) references registro(codigoestudiante )
);
select *from chat;
drop table chat;