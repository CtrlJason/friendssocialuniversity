-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-05-2024 a las 01:45:38
-- Versión del servidor: 10.5.20-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id22016913_socialuniversityfriends`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE genero (
    idgenero INT AUTO_INCREMENT PRIMARY KEY,
    genero VARCHAR(100)
);

--
-- Estructura de tabla para la tabla `carrera`
--
CREATE TABLE carrera (
    idcarrera INT AUTO_INCREMENT PRIMARY KEY,
    carrera VARCHAR(100),
    semestre INT
);

--
-- Estructura de tabla para la tabla `registro`
--
CREATE TABLE registro (
    codigoestudiante INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(100),
    apellido VARCHAR(100), 
    correo VARCHAR(100),
    contraseña VARCHAR(100),
    nick VARCHAR(100) UNIQUE NOT NULL,
    idcarrera INT,
    fechadenacimiento DATE,
    idgenero INT,
    FOREIGN KEY (idcarrera) REFERENCES carrera(idcarrera),
    FOREIGN KEY (idgenero) REFERENCES genero(idgenero) 
);

--
-- Estructura de tabla para la tabla `gustos`
--

CREATE TABLE gustos (
    idgustos INT AUTO_INCREMENT PRIMARY KEY,
    gustos VARCHAR(100)
);
--
-- Estructura de tabla para la tabla `usuario`
--
CREATE TABLE usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idestudiante INT,
    idgustos INT,
    idgenerousuario INT,
    idcarrerausuario INT,
    FOREIGN KEY (idestudiante) REFERENCES registro(codigoestudiante),
    FOREIGN KEY (idgustos) REFERENCES gustos(idgustos),
    FOREIGN KEY (idgenerousuario) REFERENCES genero(idgenero),
    FOREIGN KEY (idcarrerausuario) REFERENCES carrera(idcarrera)
);

--
-- Estructura de tabla para la tabla `chat`
--
CREATE TABLE chat (
    id INT AUTO_INCREMENT PRIMARY KEY,
    enviado INT,
    recibido INT,
    mensaje TEXT,
    FOREIGN KEY (enviado) REFERENCES registro(codigoestudiante),
    FOREIGN KEY (recibido) REFERENCES registro(codigoestudiante)
);
--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE notificaciones (
  idnotificacion int(11) PRIMARY KEY,
  idusuario int(25),
  tipodenotificacion varchar(50),
  FOREIGN KEY (idusuario) REFERENCES usuario (id)
); 

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
