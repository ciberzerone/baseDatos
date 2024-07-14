-- Creación de tablas para el sistema de Tienda de Electrodomésticos

CREATE TABLE Electrodomestico (
    ElectrodomesticoID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255),
    Modelo VARCHAR(255),
    Precio DECIMAL(10, 2),
    Garantia_Meses INT
);

CREATE TABLE Categoria (
    CategoriaID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255),
    Descripcion TEXT
);

CREATE TABLE Electrodomestico_Categoria (
    ElectrodomesticoID INT,
    CategoriaID INT,
    FOREIGN KEY (ElectrodomesticoID) REFERENCES Electrodomestico(ElectrodomesticoID),
    FOREIGN KEY (CategoriaID) REFERENCES Categoria(CategoriaID),
    PRIMARY KEY (ElectrodomesticoID, CategoriaID)
);

CREATE TABLE Proveedor (
    ProveedorID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255),
    Direccion VARCHAR(255),
    Telefono VARCHAR(50),
    Correo_Electronico VARCHAR(255)
);

CREATE TABLE Electrodomestico_Proveedor (
    ElectrodomesticoID INT,
    ProveedorID INT,
    FOREIGN KEY (ElectrodomesticoID) REFERENCES Electrodomestico(ElectrodomesticoID),
    FOREIGN KEY (ProveedorID) REFERENCES Proveedor(ProveedorID),
    PRIMARY KEY (ElectrodomesticoID, ProveedorID)
);

CREATE TABLE Cliente (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255),
    Direccion VARCHAR(255),
    Telefono VARCHAR(50),
    Correo_Electronico VARCHAR(255)
);

CREATE TABLE Venta (
    VentaID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha_Venta DATE,
    Monto_Total DECIMAL(10, 2),
    ClienteID INT,
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID)
);

CREATE TABLE Detalle_Venta (
    DetalleVentaID INT AUTO_INCREMENT PRIMARY KEY,
    VentaID INT,
    ElectrodomesticoID INT,
    Cantidad INT,
    Precio_Unitario DECIMAL(10, 2),
    FOREIGN KEY (VentaID) REFERENCES Venta(VentaID),
    FOREIGN KEY (ElectrodomesticoID) REFERENCES Electrodomestico(ElectrodomesticoID)
);
