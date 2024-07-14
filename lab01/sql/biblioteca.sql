
-- Creación de tablas para el sistema de Biblioteca

CREATE TABLE Libro (
    ISBN VARCHAR(13) PRIMARY KEY,
    Titulo VARCHAR(255),
    Fecha_Publicacion DATE
);

CREATE TABLE Autor (
    AutorID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255),
    Fecha_Nacimiento DATE,
    Nacionalidad VARCHAR(255)
);

CREATE TABLE Libro_Autor (
    ISBN VARCHAR(13),
    AutorID INT,
    FOREIGN KEY (ISBN) REFERENCES Libro(ISBN),
    FOREIGN KEY (AutorID) REFERENCES Autor(AutorID),
    PRIMARY KEY (ISBN, AutorID)
);

CREATE TABLE Genero (
    GeneroID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255),
    Descripcion TEXT
);

CREATE TABLE Libro_Genero (
    ISBN VARCHAR(13),
    GeneroID INT,
    FOREIGN KEY (ISBN) REFERENCES Libro(ISBN),
    FOREIGN KEY (GeneroID) REFERENCES Genero(GeneroID),
    PRIMARY KEY (ISBN, GeneroID)
);

CREATE TABLE Miembro (
    MiembroID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255),
    Direccion VARCHAR(255),
    Telefono VARCHAR(50),
    Correo_Electronico VARCHAR(255)
);

CREATE TABLE Prestamo (
    PrestamoID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha_Inicio DATE,
    Fecha_Devolucion DATE,
    MiembroID INT,
    FOREIGN KEY (MiembroID) REFERENCES Miembro(MiembroID)
);

CREATE TABLE Prestamo_Libro (
    PrestamoID INT,
    ISBN VARCHAR(13),
    FOREIGN KEY (PrestamoID) REFERENCES Prestamo(PrestamoID),
    FOREIGN KEY (ISBN) REFERENCES Libro(ISBN),
    PRIMARY KEY (PrestamoID, ISBN)
);
