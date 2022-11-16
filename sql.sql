-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 22 Janvier 2015 à 13:35
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `statistiques`
--
CREATE DATABASE IF NOT EXISTS `statistiques` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `statistiques`;

-- --------------------------------------------------------

--
-- Structure de la table `statistiques`
--

DROP TABLE IF EXISTS `statistiques`;
CREATE TABLE IF NOT EXISTS `statistiques` (
  `ID` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `population` int(10) unsigned NOT NULL,
  `annee` year(4) NOT NULL,
  `superficie` int(10) unsigned NOT NULL,
  `densite` decimal(8,2) unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=239 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*-------------------------------COURS----------------------------------------*/

/*---------------------------------pour afficher les éléments des "nom" par ordre alphabetique-----------------*/
/*exp: => SELECT nom "FROM" (mot clé) "FROM BY" nom
/*---------------------------------pour afficher les éléments des "nom" par ordre alphabetique sant utilisé les mots clé-----------------*/
/*exp: => SELECT * "FROM" (mot clé) "FROM BY"
/*---------------------------------pour afficher les nom des pays classé par superficie du plus grand au plus petit-----------------*/
/*SELECT nom FROM statistiques ORDER BY superficie DESC
/*----------pour afficher la liste des pays et leur population, pour tout les pays dont le  nombre d'habitants dépasse 100 millions, classés par population---*/

---------------------------------------------------------------------------------------------------------------------------------------------------------------
                    /*-------------CONDITION---------------------*/
/* exp: => SELECT nom,population FROM statistiques WHERE population>100000000 ORDER BY population;

/*----------pour afficher la liste des pays dont la suerficie est entre 10000 et 20000 km²---*/
/*SELECT nom FROM statistiques WHERE superficie BETWEEN 10000 AND 20000 ORDER BY superficie;*/
/*oubien on peut l'ecrire aussi => SELECT nom FROM statistiques WHERE (superficie>= 10000) AND (superficie<=20000);

/*LIKE*/
/* afficher la liste de tous les pays commençant par F classé par ordre alphabétique*/
/*exp => SELECT nom FROM statistiques WHERE nom LIKE "F%" ORDER BY nom;


/* % (pourcentage)  */
/* afficher la liste de tous les pays dont le nom se termine parles lettre"TAN" */
/*SELECT nom FROM statistiques WHERE nom LIKE "%TAN";*/

/* afficher la liste de tous les pays contenant "BEL"  */
/* exp => SELECT nom FROM statistiques WHERE nom LIKE "%BEL%";*/

/*Afficher le nom des 5 les plus petit pays avec leurs superficie*/
/* exp => SELECT nom,superficie FROM statistiques ORDER BY superficie LIMIT 5 ;*/

/*Afficher les 8 pays ayant la plus grande densité de population
SELECT nom, densite FROM statistiques ORDER BY densite DESC LIMIT 8;*/