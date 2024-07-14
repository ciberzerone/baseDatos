CREATE TABLE Producto (
    ProductoID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255),
    Codigo_Barras VARCHAR(255),
    Precio DECIMAL(10, 2),
    Fecha_Caducidad DATE
);

CREATE TABLE Categoria (
    CategoriaID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255),
    Descripcion TEXT
);

CREATE TABLE Producto_Categoria (
    ProductoID INT,
    CategoriaID INT,
    FOREIGN KEY (ProductoID) REFERENCES Producto(ProductoID),
    FOREIGN KEY (CategoriaID) REFERENCES Categoria(CategoriaID),
    PRIMARY KEY (ProductoID, CategoriaID)
);

CREATE TABLE Proveedor (
    ProveedorID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255),
    Direccion VARCHAR(255),
    Telefono VARCHAR(50),
    Correo_Electronico VARCHAR(255)
);

CREATE TABLE Producto_Proveedor (
    ProductoID INT,
    ProveedorID INT,
    FOREIGN KEY (ProductoID) REFERENCES Producto(ProductoID),
    FOREIGN KEY (ProveedorID) REFERENCES Proveedor(ProveedorID),
    PRIMARY KEY (ProductoID, ProveedorID)
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
    ProductoID INT,
    Cantidad INT,
    Precio_Unitario DECIMAL(10, 2),
    FOREIGN KEY (VentaID) REFERENCES Venta(VentaID),
    FOREIGN KEY (ProductoID) REFERENCES Producto(ProductoID)
);