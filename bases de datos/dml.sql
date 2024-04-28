
insert into carrera(idcarrera,carrera,semestre)
values (5641768,"cocina",6),
(2985988,"ingenieria de software",8),
(44558,"medicina",7);
insert into gustos (idgustos,gustos)
values (14224142,"futbol,ajedrez,ping pong"),
(21431412,"basquet,majong,criqued"),
(456454565,"voleibol");
insert into genero (idgenero,genero)
values (45987643,"hombre"),
(78758791,"mujer"),
(466876949,"otro");

insert into registro (codigoestudiante,nombre,apellido,correo,contraseña,nick,idcarrera,fechadenacimiento,idgenero)
values(15478920,"juan camilo","barragan pottes","mirllan@gmail.com","123456789mirllan","juan.",5641768,'1998-05-31',45987643),
(16389571, "Ana María", "jose velasquez", "anamaria@example.com","p455w0rd", "jose,",2985988 , '1994-04-12', 78758791),
(17412748, "Marcela González","jason martinez", "marcela.gonzalez@example.com","12123124afruj","jose/*", 44558 , '1999-03-31', 466876949);

insert into usuario (idestudiante,idgustos,idgenerousuario,idcarrerausuario)
values(15478920,14224142,45987643,5641768),
(16389571,21431412,78758791,2985988),
(17412748,456454565 ,466876949,44558);
insert into chat(enviado,recibido,mensaje)
values(15478920,17412748,"Bien amigo"),
(16389571,15478920,"Como estas amigo"),
(17412748,16389571,"Hola amigo");