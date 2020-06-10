/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE IF NOT EXISTS `bd_simbolos` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `bd_simbolos`;

CREATE TABLE IF NOT EXISTS `simbolos` (
  `id` int(2) NOT NULL,
  `nombre` varchar(500) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `descripcion` varchar(2000) COLLATE utf8_spanish_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

/*!40000 ALTER TABLE `simbolos` DISABLE KEYS */;
REPLACE INTO `simbolos` (`id`, `nombre`, `descripcion`) VALUES
	(1, 'Lavado a máquina 30º', 'Lavado a máquina sin superar los 30º. Acción mecánica y centrifugado normal'),
	(2, 'Lavado a máquina 60º', 'Lavado a máquina sin superar los 60º. Acción mecánica y centrifugado normal'),
	(3, 'Lavado a máquina 90º', 'Lavado a máquina sin superar los 90º. Acción mecánica y centrifugado normal'),
	(4, 'Lavado a máquina 30º corto', 'Lavado a máquina sin superar los 30º. Acción mecánica reducida y centrifugado corto o programa antiarrugas'),
	(5, 'Lavado a máquina 60º corto', 'Lavado a máquina sin superar los 60º. Acción mecánica reducida y centrifugado corto o programa antiarrugas'),
	(6, 'Lavado a máquina 90º corto', 'Lavado a máquina sin superar los 90º. Acción mecánica reducida y centrifugado corto o programa antiarrugas'),
	(16, 'Permite lejía', 'Se puede usar lejía'),
	(7, 'Lavado a máquina 30º delicado', 'Lavado a máquina sin superar los 30º. Programa prendas delicadas'),
	(8, 'Lavado a máquina 60º delicado', 'Lavado a máquina sin superar los 60º. Programa prendas delicadas'),
	(9, 'Lavado a máquina 90º delicado', 'Lavado a máquina sin superar los 90º. Programa prendas delicadas'),
	(10, 'Lavado a máquina 30º', 'Lavado a máquina sin superar los 30º'),
	(11, 'Lavado a máquina 60º', 'Lavado a máquina sin superar los 60º'),
	(12, 'Lavado a máquina 90º', 'Lavado a máquina sin superar los 90º'),
	(13, 'Lavado a máquina', 'Lavado a máquina'),
	(14, 'No mojar', 'No lavar en agua'),
	(15, 'Lavado a mano', 'Lavado a mano. Quizás indique temperatura máxima'),
	(17, 'No permite lejía', 'No se puede usar lejía'),
	(18, 'Permite lejía sin cloro', 'Permite lejía sin cloro o blanqueador oxigenado'),
	(19, 'Secado a máquina', 'Permite el secado a máquina'),
	(20, 'Secado a máquina corto', 'Permite el secado a máquina con acción mecánica reducida'),
	(21, 'Secado a máquina delicado', 'Permite el secado a máquina con programa para prendas delicadas'),
	(22, 'Secado a máquina temperatura baja', 'Permite el secado a máquina a baja temperatura'),
	(23, 'Secado a máquina temperatura media', 'Permite el secado a máquina a media temperatura'),
	(24, 'Secado a máquina temperatura alta', 'Permite el secado a máquina a alta temperatura'),
	(25, 'Secado a máquina frío', 'Permite el secado a máquina con temperatura fría'),
	(26, 'Secado a máquina frío corto', 'Permite el secado a máquina con temperatura fría y programa corto'),
	(27, 'No secar a máquina', 'No permite secar a máquina'),
	(28, 'Secado vertical', 'Colgar para escurrir'),
	(29, 'Secado vertical a la sombra', 'Colgar para escurrir a la sombra'),
	(30, 'Secar horizontal', 'Secar en horizontal'),
	(31, 'Secar horizontal a la sombra', 'Secar en horizontal y a la sombra'),
	(32, 'Secar a la sombra', 'Secar a la sombra'),
	(33, 'Colgar para secar', 'Colgar para secar'),
	(34, 'Colgar para secar a la sombra', 'Colgar para secar a la sombra'),
	(35, 'No retorcer', 'No retorcer'),
	(36, 'Todo tipo de planchado', 'Permite planchar sin limitaciones'),
	(37, 'No planchar', 'No permite planchado'),
	(38, 'Planchar sin vapor', 'Permite planchado pero sin vapor'),
	(39, 'Planchar máximo 110º', 'Permite planchado a 110º de temperatura máxima'),
	(40, 'Planchar máximo 150º', 'Permite planchado a 150º de temperatura máxima'),
	(41, 'Planchar máximo 200º', 'Permite planchado a 200º de temperatura máxima'),
	(42, 'Planchar máximo 110º sin vapor', 'Permite planchado a 110º de temperatura máxima, pero sin vapor'),
	(43, 'Planchar máximo 150º sin vapor', 'Permite planchado a 150º de temperatura máxima, pero sin vapor'),
	(44, 'Planchar máximo 200º sin vapor', 'Permite planchado a 200º de temperatura máxima, pero sin vapor'),
	(45, 'Limpieza en seco', 'Necesario limpiar en seco'),
	(46, 'Limpieza en seco solvente', 'Limpieza en seco con cualquier solvente'),
	(47, 'Limpieza en seco percloroetileno', 'Limpieza en seco con percloroetileno'),
	(48, 'Limpieza en seco solventes fluorados', 'Limpieza en seco con solventes fluorados'),
	(49, 'Limpieza en seco hidrocarburos', 'Limpieza en seco con hidrocarburos'),
	(50, 'Limpieza en seco siliconas', 'Limpieza en seco con siliconas'),
	(51, 'Limpieza húmeda', 'Limpieza húmeda'),
	(53, 'Limpieza en seco humedad reducida', 'Limpieza en seco aplicando humedad reducida'),
	(54, 'Limpieza en seco sin vapor', 'Limpieza en seco sin utilizar vapor'),
	(55, 'Limpieza en seco corto', 'Limpieza en seco proceso corto'),
	(56, 'Limpieza en seco baja temperatura', 'Limpieza en seco a baja temperatura'),
	(52, 'No limpiar en seco', 'No limpiar en seco');
/*!40000 ALTER TABLE `simbolos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
