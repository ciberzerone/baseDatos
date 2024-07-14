DROP peliculas_complejo  IF EXISTS;
CREATE DATABASE peliculas_complejo;
USE peliculas_complejo;

CREATE TABLE Peliculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    anio INT NOT NULL,
    genero VARCHAR(100),
    id_director INT,
    FOREIGN KEY (id_director) REFERENCES Directores(id)
);

CREATE TABLE Directores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE Actores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE PeliculasActores (
    id_pelicula INT,
    id_actor INT,
    rol VARCHAR(50),  -- Ej. 'principal' o 'secundario'
    FOREIGN KEY (id_pelicula) REFERENCES Peliculas(id),
    FOREIGN KEY (id_actor) REFERENCES Actores(id),
    PRIMARY KEY (id_pelicula, id_actor)
);

INSERT INTO Directores (nombre) VALUES 
('Steven Spielberg'),
('Christopher Nolan'),
('Quentin Tarantino'),
-- agrega más directores según sea necesario
;

INSERT INTO Actores (nombre) VALUES 
('Tom Hanks'),
('Leonardo DiCaprio'),
('Meryl Streep'),
-- agrega más actores según sea necesario
;


INSERT INTO Peliculas (titulo, anio, genero, id_director) VALUES 
('Inception', 2010, 'Sci-Fi', 2),
('Titanic', 1997, 'Romance', 1),
('Pulp Fiction', 1994, 'Crime', 3),
-- agrega más películas hasta tener al menos 50
;

INSERT INTO PeliculasActores (id_pelicula, id_actor, rol) VALUES 
(1, 2, 'principal'),
(2, 3, 'principal'),
(3, 1, 'secundario'),
-- agrega más relaciones según sea necesario
;


