-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: empresa
-- ------------------------------------------------------
-- Server version	5.7.15-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `idDepartamento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `setor` varchar(50) DEFAULT NULL,
  `codigo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idDepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Administração','ADM15'),(2,'Vendas','VEND29'),(3,'Recursos Humanos','RH39'),(4,'Diretoria','DIR77'),(5,'Estoque','EST21');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `idFuncionario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `sexo` varchar(30) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `dataNascimento` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `data` varchar(30) DEFAULT NULL,
  `estadoCivil` varchar(30) DEFAULT NULL,
  `uf` varchar(30) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `numero` varchar(30) DEFAULT NULL,
  `complemento` varchar(20) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idFuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Aderbal','Masculino','158',NULL,NULL,NULL,NULL,'05/10/2014',NULL,'Rondônia',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Allan','Masculino','111.111.111-11','555555555','allanvictor@yahoo.com.br','03/11/1995','(21)98100-5804','08/11/2016','Solteiro(a)','Rio de Janeiro','20500-125','Rua Mercedes','Rio de Janeiro','500','Casa 5','Tijuca'),(4,'Jussara Barbosa','Feminino','215.789.621-11','','','  /  /    ','(  )9    -    ','08/11/2016','Solteiro(a)','São Paulo','     -   ','','','','',''),(5,'Josias José','Masculino','123.456.851-23','','','  /  /    ','(  )9    -    ','10/11/2016','Solteiro(a)','Piauí','     -   ','','','','',''),(6,'Percival','Masculino','564.821.456-56','','','  /  /    ','(  )9    -    ','12/11/2016','Casado(a)','São Paulo','     -   ','','','','',''),(7,'Nestor Cerveró','Masculino','856.482.135-48','','','  /  /    ','(  )9    -    ','13/11/2016','Casado(a)','Rio de Janeiro','     -   ','','','','','');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionariodepartamento`
--

DROP TABLE IF EXISTS `funcionariodepartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionariodepartamento` (
  `idFuncionarioDepartamento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idFuncionario` int(10) unsigned NOT NULL,
  `idDepartamento` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idFuncionarioDepartamento`),
  KEY `fk_FuncionarioDepartamento_idFuncionario` (`idFuncionario`),
  KEY `fk_FuncionarioDepartamento_idDepartamento` (`idDepartamento`),
  CONSTRAINT `fk_FuncionarioDepartamento_idDepartamento` FOREIGN KEY (`idDepartamento`) REFERENCES `departamento` (`idDepartamento`),
  CONSTRAINT `fk_FuncionarioDepartamento_idFuncionario` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionariodepartamento`
--

LOCK TABLES `funcionariodepartamento` WRITE;
/*!40000 ALTER TABLE `funcionariodepartamento` DISABLE KEYS */;
INSERT INTO `funcionariodepartamento` VALUES (1,1,1),(2,2,4),(3,5,5),(4,6,1),(5,4,2);
/*!40000 ALTER TABLE `funcionariodepartamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-15 13:34:33
