--Create DB

USE [master]
GO

DROP DATABASE IF EXISTS [RepositorioMusicaDB];

CREATE DATABASE [RepositorioMusicaDB]
GO

USE [RepositorioMusicaDB]
GO

/* Criar a tabela MUSICA */ 

CREATE TABLE Musica (
ID_Musica NVARCHAR (25) PRIMARY KEY,
Titulo_Musica NVARCHAR (25) NOT NULL,
Genero_Musica NVARCHAR(25) NOT NULL,
Autor_Musica NVARCHAR(100) NOT NULL,

);
/* Criar a tabela CONCERTO */ 
CREATE TABLE Concerto (
ID_Concerto INT PRIMARY KEY,
Nome_Concerto NVARCHAR (25) ,
Lugar_Concerto NVARCHAR(25) NOT NULL,
Quantidade_Publico INT NOT NULL,
Valor_Arrecadado INT NOT NULL,

);


/* Criar a tabela CONCERTO */ 
CREATE TABLE Musica_Concerto (
Duracao_Musica INT NOT NULL,
Playback NVARCHAR (5),

FK_Musica NVARCHAR (25) FOREIGN KEY REFERENCES Musica(ID_Musica),
FK_Concerto INT FOREIGN KEY REFERENCES Concerto(ID_Concerto),

CONSTRAINT PK_Musica_Concerto PRIMARY KEY (

    FK_Musica ASC,
	FK_Concerto ASC
	
	)
);

