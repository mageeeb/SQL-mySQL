
                                        /*-------------------------------COURS----------------------------------------*/



/*---------------------------------pour afficher les éléments des "nom" par ordre alphabetique-----------------
exp: =>*/ SELECT nom "FROM" (mot clé) "FROM BY" nom
/*---------------------------------pour afficher les éléments des "nom" par ordre alphabetique sant utilisé les mots clé-----------------*/
/*exp: =>*/ SELECT * "FROM" (mot clé) "FROM BY"
/*---------------------------------pour afficher les nom des pays classé par superficie du plus grand au plus petit-----------------*/
SELECT nom FROM statistiques ORDER BY superficie DESC
/*----------pour afficher la liste des pays et leur population, pour tout les pays dont le  nombre d'habitants dépasse 100 millions, classés par population---*/

---------------------------------------------------------------------------------------------------------------------------------------------------------------
                    /*-------------CONDITION---------------------*/
/* exp: =>*/ SELECT nom,population FROM statistiques WHERE population>100000000 ORDER BY population;

/*----------pour afficher la liste des pays dont la suerficie est entre 10000 et 20000 km²---
exp=> */SELECT nom FROM statistiques WHERE superficie BETWEEN 10000 AND 20000 ORDER BY superficie;*/
/*oubien on peut l'ecrire aussi =>*/ SELECT nom FROM statistiques WHERE (superficie>= 10000) AND (superficie<=20000);

/*LIKE*/
/* afficher la liste de tous les pays commençant par F classé par ordre alphabétique
exp =>*/ SELECT nom FROM statistiques WHERE nom LIKE "F%" ORDER BY nom;


                                                            /* % (pourcentage)  */

/* afficher la liste de tous les pays dont le nom se termine parles lettre"TAN" 
exp => */SELECT nom FROM statistiques WHERE nom LIKE "%TAN";

/* afficher la liste de tous les pays contenant "BEL"  */
/* exp =>*/ SELECT nom FROM statistiques WHERE nom LIKE "%BEL%";

/*Afficher le nom des 5 les plus petit pays avec leurs superficie
 exp =>*/ SELECT nom,superficie FROM statistiques ORDER BY superficie LIMIT 5 ;*/

/*Afficher les 8 pays ayant la plus grande densité de population
exp =>*/  SELECT nom, densite FROM statistiques ORDER BY densite DESC LIMIT 8;

/*--------------------------------------------------COUNT(...) pour calculer---------------*/

/* pour connaitre le nombre  d'élément dans une table
exp =>*/ SELECT COUNT(ID) FROM statistiques

/*afficher le nombre  de pays dont la population dépasse 100000000
/*exp =>*/ SELECT COUNT(nom) FROM statistiques WHERE "population">= 100000000

/*-------------------dans la DB (ma base) si on a suprimé les numéros de telephone de 3 personnes sur les 6 et qu'on a mis la valeur NULL------------
exp=>*/ SELECT COUNT(telephone) FROM adresses WHERE telephone IS NOT NULL
        SELECT COUNT(*) FROM adresses WHERE telephone IS NOT NULL

/*--------------------quel est le pays qui a la densité de population maximum et dont le population est entre 8 et 12 million d'habitant?---
exp=>*/ SELECT MAX(densite) FROM statistiques WHERE population BETWEEN 8000000 AND 12000000
/*pour le mettre en decsendant et afficher la limite 1*/SELECT nom, densite FROM statistiques WHERE population BETWEEN 8000000 AND 12000000 ORDER BY densite DESC LIMIT 1;

/*-----------------compter le nombre de pays regroupé par année avec GROUP BY-------------------
exp => */SELECT annee, COUNT(*) FROM statistiques GROUP BY annee;

/*insertion dun nouveau pays dans le table--------------------------
exp=>*/ INSERT INTO statistiques VALUES(NULL,'mon nouveau pays',12345789,2022,40000,8145.89);

                    /*-----------------------------------------INSERT TO----------------------------------------------------------------*/

/*insertion de plusieur pays dans le table--------------------------
exp => */ INSERT INTO statistiques, VALUES 
          (NULL,'Pays1',10000,2020,100,100), 
          (NULL,'Pays2',25000,2021,1250,20), 
          (NULL,'Pays3',50000,2020,5000,10); 

          /*-----------------------------------------UPDATE----------------------------------------------------------------*/

/*Modification des données de la Chine (Wikipédia)
exp=> */UPDATE statistiques,
        SET population=1411780000,annee=2020,densite=147
        WHERE ID=1

/*------------------quand on veux mettre à jour la date de tout les colonnes de 2011 à 2021--------------------------------
      exp=>  */ UPDATE statistiques,
                SET annee= 2021
                WHERE annee=2011
    
                    /*-----------------------------------------DELETE----------------------------------------------------------------*/

/*-------------------suprimmé un pays-------------------
exp=> */ DELETE FROM statistiques,
         WHERE nom= 'pays3'


                                /*en téléchargent une nouvelle DB, northwind
affiché Nom, prénom, date de naissance des employés
exp=> */ SELECT LastName, FirstName, BirthDate FROM employees


