 CREATE   table clients (
   id_client  INT PRIMARY KEY  AUTO_INCREMENT,
   nom VARCHAR,
   prenom VARCHAR
   telephone INT ,
  email VARCHAR ,
   adresse VARCHAR 
   ) ;
    CREATE   table produits (
   id_produit  INT PRIMARY KEY  AUTO_INCREMENT ,
   nom VARCHAR,
   description VARCHAR
   prix INT ,
  stock VARCHAR 
    
   ) ;
    CREATE   table commandes (
   id_commande  INT PRIMARY KEY ,
    FOREIGN KEY id_client   REFERENCES  clients (id_client) ,

   date_commande date,
   statut VARCHAR  default 'en cours ' check statut in ('en cours ','livré','annulé') ,
   total INT 
  
   ) ;
