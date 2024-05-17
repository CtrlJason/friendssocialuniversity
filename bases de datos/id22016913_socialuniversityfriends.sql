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
    codigoestudiante INT,
    idgustos INT,
    idgenero INT,
    idcarrera INT,
    FOREIGN KEY (codigoestudiante) REFERENCES registro(codigoestudiante),
    FOREIGN KEY (idgustos) REFERENCES gustos(idgustos),
    FOREIGN KEY (idgenero) REFERENCES genero(idgenero),
    FOREIGN KEY (idcarrera) REFERENCES carrera(idcarrera)
);

--
-- Estructura de tabla para la tabla `chat`
--
CREATE TABLE chat (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_chatunico INT,
    de INT,
    para INT,
    mensaje VARCHAR(100),
    fecha DATETIME,
    leido BOOLEAN
);

CREATE TABLE chat_individual (
    id_chatunico INT AUTO_INCREMENT PRIMARY KEY,
    de INT,
    para INT
);

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE notificaciones (
    idnotificacion INT AUTO_INCREMENT PRIMARY KEY,
    id INT,
    tipodenotificacion VARCHAR(50),
    FOREIGN KEY (id) REFERENCES usuario(id)
);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;