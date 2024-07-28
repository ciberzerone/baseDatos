![Database](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)
# Lab Relaciones, constras y funciones
<hr>

### SQL - Base de datos Empresa:
[Ver SQL](https://github.com/ciberzerone/baseDatos/blob/main/lab02/sql/db_hotle.sql)

### Sql script - Empresa:
[Ver SQL](https://github.com/ciberzerone/baseDatos/blob/main/lab02/sql/db_hotle.sql)


## Paso 1: Crear la Base de Datos

### 1. Crear una base de datos llamada `empresa`.



## Paso 2: Crear las Tablas y Relaciones


### 2. Crear una tabla llamada `departamentos` con las siguientes columnas:
    - departamento_id: INT, clave primaria, autoincremento.
    - nombre: VARCHAR(100), no hay nada.

```sql 
CREATE TABLE departamentos (
    departamento_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
```
### 3. Crea una tabla llamada `empleados` con las siguientes columnas:
    - empleado_id: INT, clave primaria, autoincremento.
    - nombre: VARCHAR(100), no hay nada.
    - salario: DECIMAL(10, 2), no, no.
    - departamento_id: INT, clave foránea que referencia a departamento_iden departamentos.

```sql 
CREATE TABLE empleados (
    empleado_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    departamento_id INT,
    );
```

### 4. Crear una relación `many to one` entre `empleados` y `departamentos`. Cada empleado debe pertenecer a un solo departamento, pero un departamento puede tener muchos empleados:
```sql 
ALTER TABLE empleados
ADD CONSTRAINT fk_departamento_empleado
FOREIGN KEY (departamento_id)
REFERENCES departamentos(departamento_id);
```

### 5. Crear una tabla llamada `proyectos` con las siguientes columnas:
    proyecto_id: INT, clave primaria, autoincremento.
    nombre: VARCHAR(100), no hay nada.
```sql 
CREATE TABLE proyectos (
    proyecto_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
```

### 6. Crear  una tabla intermedialla `empleado_proyecto` establecer una relación `Many-to-Many` entre `empleados` y `proyectos`. Las columnas de esta tabla:

    empleado_id: INT, clave foránea que referencia a empleado_iden empleados.
    proyecto_id: INT, clave foránea que referencia a proyecto_iden proyectos.


```sql 
CREATE TABLE empleado_proyecto (
    empleado_id INT,
    proyecto_id INT,
    PRIMARY KEY (empleado_id, proyecto_id),
    CONSTRAINT fk_empleado FOREIGN KEY (empleado_id) REFERENCES empleados(empleado_id),
    CONSTRAINT fk_proyecto FOREIGN KEY (proyecto_id) REFERENCES proyectos(proyecto_id)
);
```

### 7. Crear una tabla llamada `detalles_empleado` con las siguientes columnas:

    empleado_id: INT, clave primaria, clave foránea que referencia a empleado_iden empleados.
    direccion: VARCHAR (255), no es un , no.
    telefonoVARCHAR (15), no, no.

```sql 
CREATE TABLE detalles_empleado (
    empleado_id INT PRIMARY KEY,
    direccion VARCHAR(255) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    
);
```
### 8. Crear una relación `OneToOne` entre `empleados` y `detalles_empleado`. Cada empleado debe tener un conjunto único de detalles.

```sql 
ALTER TABLE detalles_empleado
ADD CONSTRAINT fk_detalle_empleado FOREIGN KEY (empleado_id) REFERENCES empleados(empleado_id);
```

### 9. Crea datos falsos para rellenar las tablas.
```sql 
INSERT INTO departamentos (nombre) VALUES 
('Recursos Humanos'), ('Desarrollo'), ('Marketing'),
('Ventas'), ('Finanzas'), ('Operaciones'),
('IT'), ('Legal'), ('Compras'),
('Investigación'), ('Desarrollo de Producto'), ('Soporte Técnico'),
('Atención al Cliente'), ('Logística'), ('Calidad'),
('Mantenimiento'), ('Producción'), ('Administración'),
('RRHH'), ('Innovación');
``` 
```sql 
INSERT INTO empleados (nombre, salario, departamento_id) VALUES 
('Juan Perez', 50000.00, 1),
('Maria Lopez', 60000.00, 2),
('Carlos Sanchez', 45000.00, 3),
('Ana Gomez', 70000.00, 4),
('Luis Martinez', 55000.00, 5),
('Laura Fernandez', 52000.00, 6),
('Jorge Ramirez', 48000.00, 7),
('Sofia Hernandez', 75000.00, 8),
('Pedro Diaz', 53000.00, 9),
('Paula Morales', 61000.00, 10),
('Diego Castillo', 47000.00, 11),
('Andrea Suarez', 72000.00, 12),
('Ricardo Alvarez', 51000.00, 13),
('Sandra Torres', 65000.00, 14),
('Miguel Lopez', 49000.00, 15),
('Lucia Garcia', 56000.00, 16),
('Jose Vargas', 58000.00, 17),
('Carmen Rodriguez', 59000.00, 18),
('Rafael Jimenez', 60000.00, 19),
('Patricia Castillo', 62000.00, 20);
```

```sql 
INSERT INTO proyectos (nombre) VALUES 
('Proyecto A'), ('Proyecto B'), ('Proyecto C'),
('Proyecto D'), ('Proyecto E'), ('Proyecto F'),
('Proyecto G'), ('Proyecto H'), ('Proyecto I'),
('Proyecto J'), ('Proyecto K'), ('Proyecto L'),
('Proyecto M'), ('Proyecto N'), ('Proyecto O'),
('Proyecto P'), ('Proyecto Q'), ('Proyecto R'),
('Proyecto S'), ('Proyecto T');
``` 
```sql 
INSERT INTO empleado_proyecto (empleado_id, proyecto_id) VALUES 
(1, 1), (1, 2), (1, 3),
(2, 2), (2, 3), (2, 4),
(3, 3), (3, 4), (3, 5),
(4, 4), (4, 5), (4, 6),
(5, 5), (5, 6), (5, 7),
(6, 6), (6, 7), (6, 8),
(7, 7), (7, 8), (7, 9),
(8, 8), (8, 9), (8, 10),
(9, 9), (9, 10), (9, 11),
(10, 10), (10, 11), (10, 12),
(11, 11), (11, 12), (11, 13),
(12, 12), (12, 13), (12, 14),
(13, 13), (13, 14), (13, 15),
(14, 14), (14, 15), (14, 16),
(15, 15), (15, 16), (15, 17),
(16, 16), (16, 17), (16, 18),
(17, 17), (17, 18), (17, 19),
(18, 18), (18, 19), (18, 20),
(19, 19), (19, 20), (19, 1),
(20, 20), (20, 1), (20, 2);
```

```sql 
INSERT INTO detalles_empleado (empleado_id, direccion, telefono) VALUES 
(1, 'Calle Falsa 123', '123456789'),
(2, 'Avenida Siempre Viva 456', '987654321'),
(3, 'Boulevard de los Sueños 789', '555666777'),
(4, 'Calle Real 101', '111222333'),
(5, 'Avenida Principal 202', '444555666'),
(6, 'Calle Secundaria 303', '777888999'),
(7, 'Boulevard Principal 404', '000111222'),
(8, 'Calle Tercera 505', '333444555'),
(9, 'Avenida Secundaria 606', '666777888'),
(10, 'Calle Cuarta 707', '999000111'),
(11, 'Boulevard Secundario 808', '222333444'),
(12, 'Calle Quinta 909', '555666777'),
(13, 'Avenida Tercera 1001', '888999000'),
(14, 'Calle Sexta 1102', '111222333'),
(15, 'Boulevard Tercero 1203', '444555666'),
(16, 'Calle Septima 1304', '777888999'),
(17, 'Avenida Cuarta 1405', '000111222'),
(18, 'Calle Octava 1506', '333444555'),
(19, 'Boulevard Cuarto 1607', '666777888'),
(20, 'Calle Novena 1708', '999000111');
```

## Imagen de ER - Empresa
![Electrodomésticos](https://github.com/ciberzerone/baseDatos/blob/main/lab03/imagen/erEmpresa.PNG)


## Paso 2: Crear una Función


### 10. Crea una función llamada `calcular_bonificaciontoca` que sepa como parámetro el `empleado_id` y devuelva una bonificación como el 10% del salario del empleado. Utilizar la sensacía DETERMINISTIC en la definición de la función.

```sql 

CREATE FUNCTION calcular_bonificacion(empleado_id INT) RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE salario_base DECIMAL(10, 2);
    DECLARE bonificacion DECIMAL(10, 2);

    -- Obtener el salario del empleado
    SELECT salario INTO salario_base
    FROM empleados
    WHERE empleado_id = empleado_id;

    -- Calcular la bonificación como el 10% del salario
    SET bonificacion = salario_base * 0.10;

    RETURN bonificacion;
END $$

```

## Paso 4: Usar un delimitador 


### 11. Asegúrate de utilizar un delimitador (DELIMITER) diferente al punto y coma (;) al definir la función en el paso anterior. El desconcedo el delimitador a su valor original.

```sql 
DELIMITER $$

CREATE FUNCTION calcular_bonificacion(empleado_id INT) RETURNS DECIMAL(10, 2)
....



DELIMITER ;
```
    
