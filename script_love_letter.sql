CREATE DATABASE love_letter;
USE love_letter;

CREATE TABLE utilisateur(
pseudo VARCHAR(20) NOT NULL,
mdp INT NOT NULL,
nb_win INT NOT NULL,
CONSTRAINT PK_UTILISATEUR PRIMARY KEY (pseudo)
);

CREATE TABLE carte(
id_carte INT NOT NULL,
nom VARCHAR(20) NOT NULL UNIQUE,
effet VARCHAR(200) NOT NULL UNIQUE,
image VARCHAR(200) NOT NULL UNIQUE,
CONSTRAINT PK_CARTE PRIMARY KEY (id_carte)
);

CREATE TABLE partie(
id_partie INT NOT NULL,
nb_joueur INT NOT NULL,
nb_manche INT NOT NULL,
gagnant VARCHAR(20),
CONSTRAINT PK_PARTIE PRIMARY KEY (id_partie),
CONSTRAINT FK_PARTIE_UTILISATEUR FOREIGN KEY (gagant) REFERENCES utilisateur(pseudo),
CONSTRAINT CK_NB_JOUEUR CHECK (nb_joueur >= 2 AND nb_joueur <= 4),
CONSTRAINT CK_NB_MANCHE CHECK (nb_manche >= 4 AND nb_manche <= 7)
);

CREATE TABLE manche(
id_manche INT NOT NULL,
gagant VARCHAR(20)
CONSTRAINT PK_MANCHE PRIMARY KEY (id_manche),
CONSTRAINT FK_MANCHE_UTILISATEUR FOREIGN KEY (gagant) REFERENCES utilisateur(pseudo)
);

CREATE TABLE main(
);

CREATE TABLE pioche(
);

CREATE TABLE defausse(
);