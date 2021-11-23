CREATE DATABASE db;

USE db;

DROP TABLE IF EXISTS `etudiants`;

CREATE TABLE  `etudiants`(
        `id` INT AUTO_INCREMENT,
        `name` VARCHAR(80) NOT NULL,
        `email` VARCHAR(100) NOT NULL,
        PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `etudiants` WRITE;
INSERT INTO `etudiants` VALUES(1,'Numan', 'numan.sahnou@efrei.net');
INSERT INTO `etudiants` VALUES(2,'Matthieu', 'matthieu.eccher@efrei.net');
UNLOCK TABLES;
