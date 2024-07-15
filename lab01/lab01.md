### LAB
<hr>

## EJERCICIO I Cardinalidad

### 1. Tabla Principal: Libros
Grado: 4
Número de columnas: id_libro, titulo, anio_publicacion, genero
Cardinalidad: Dependerá del número de libros  insertados en la tabla. Vamos a asumir que puede ser N libros.

### 2. Tabla Adicional 1: Autores
Grado: 2
Número de columnas: id_autor, nombre
Cardinalidad: Dependerá del número de autores  insertados en la tabla. Vamos a asumir que puede ser M autores.

### 3. Tabla Adicional 2: Ejemplares
Grado: 4
Número de columnas: id_ejemplar, id_libro, ubicacion, estado
Cardinalidad: Dependerá del número de ejemplares  insertados  en la tabla. Vamos a asumir que puede ser P ejemplares.

### 4. Tabla Adicional 3: Editoriales
Grado: 2
Número de columnas: id_editorial, nombre
Cardinalidad: Dependerá del número de editoriales insertados en la tabla. Vamos a asumir que puede ser Q editoriales.

### 5. Tabla Intermedia: LibroAutor
Grado: 2
Número de columnas: id_libro, id_autor
Cardinalidad: Dependerá del número de relaciones entre libros y autores insertados en la tabla. Vamos a asumir que puede ser R relaciones.

<hr>

### EJERCICIO II Descripción de Entidades, Atributos y Relaciones

## Sistema 1: Biblioteca

## Entidades y Atributos

### Libro
- Título
- ISBN
- Fecha de Publicación

### Autor
- Nombre
- Fecha de Nacimiento
- Nacionalidad

### Género
- Nombre
- Descripción

### Miembro
- Número de Identificación
- Nombre
- Dirección
- Teléfono
- Correo Electrónico

### Préstamo
- Fecha de Inicio
- Fecha de Devolución

### Relaciones
    - **Libro-Autor**: Un libro puede tener uno o más autores, y un autor puede haber escrito uno o más libros.
    - **Libro-Género**: Un libro puede pertenecer a uno o más géneros, y un género puede tener uno o más libros.
    - **Miembro-Préstamo**: Un miembro puede tener uno o más préstamos, y un préstamo está asociado a un miembro.
    - **Préstamo-Libro**: Un préstamo puede incluir uno o más libros, y un libro puede ser incluido en diferentes préstamos a lo largo del tiempo.

### Imagen de ER - Biblioteca
![biblioteca](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/biblioteca.PNG)

### ER - Biblioteca PDF:
[Ver PDF](https://github.com/ciberzerone/baseDatos/blob/main/lab01/pdf/biblioteca.pdf)


### SQL - Biblioteca:
[Ver SQL](https://github.com/ciberzerone/baseDatos/blob/main/lab01/sql/biblioteca.sql)



## Sistema 2: Supermercado

### Entidades y Atributos

#### Producto
- Nombre
- Código de Barras
- Precio
- Fecha de Caducidad

#### Categoría
- Nombre
- Descripción

#### Proveedor
- Nombre
- Dirección
- Teléfono
- Correo Electrónico

#### Cliente
- Número de Cliente
- Nombre
- Dirección
- Teléfono
- Correo Electrónico

#### Venta
- Fecha de Venta
- Monto Total

#### DetalleVenta
- Cantidad
- Precio Unitario

### Relaciones
- **Producto-Categoría**: Un producto pertenece a una categoría, y una categoría puede tener varios productos.
- **Producto-Proveedor**: Un producto puede ser suministrado por uno o más proveedores, y un proveedor puede suministrar varios productos.
- **Cliente-Venta**: Un cliente puede realizar una o más ventas, y una venta está asociada a un cliente.
- **Venta-DetalleVenta**: Una venta puede tener varios detalles de venta, y un detalle de venta está asociado a una venta y a un producto.

## Imagen de ER - Supermercado
[Supermercado](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/supermercado.PNG)

### ER - Biblioteca PDF:
[Ver PDF](https://github.com/ciberzerone/baseDatos/blob/main/lab01/pdf/supermercado.pdf)


### SQL - Biblioteca:
[Ver SQL](https://github.com/ciberzerone/baseDatos/blob/main/lab01/sql/supermercado.sql)




## Sistema 3: Tienda de Electrodomésticos

### Entidades y Atributos

#### Electrodoméstico
- Nombre
- Modelo
- Precio
- Garantía (meses)

#### Categoría
- Nombre
- Descripción

#### Proveedor
- Nombre
- Dirección
- Teléfono
- Correo Electrónico

#### Cliente
- Número de Cliente
- Nombre
- Dirección
- Teléfono
- Correo Electrónico

#### Venta
- Fecha de Venta
- Monto Total

#### DetalleVenta
- Cantidad
- Precio Unitario

### Relaciones
- **Electrodoméstico-Categoría**: Un electrodoméstico pertenece a una categoría, y una categoría puede tener varios electrodomésticos.
- **Electrodoméstico-Proveedor**: Un electrodoméstico puede ser suministrado por uno o más proveedores, y un proveedor puede suministrar varios electrodomésticos.
- **Cliente-Venta**: Un cliente puede realizar una o más ventas, y una venta está asociada a un cliente.
- **Venta-DetalleVenta**: Una venta puede tener varios detalles de venta, y un detalle de venta está asociado a una venta y a un electrodoméstico.


## Imagen de ER - Tienda de Electrodomésticos
![Electrodomésticos](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/electodomesticos.PNG)


### ER - Electrodomésticos PDF:
[Ver PDF](https://github.com/ciberzerone/baseDatos/blob/main/lab01/pdf/electrodomesticos.pdf)


### SQL - Electrodomésticos:
[Ver SQL](https://github.com/ciberzerone/baseDatos/blob/main/lab01/sql/electrodomesticos.sql)




<hr>

### EJERCICIO III  Consultas Básicas en SQL para la Base de Datos de Películas

Ejemplos de consultas SQL básicas para interactuar con la base de datos de peliculas_db. 

## Imagen de base datos: peliculas_db
![Electrodomésticos](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/tabla_peliculas_dbpeliculas.PNG)


### SQL - peliculas_db:
[Ver SQL](https://github.com/ciberzerone/baseDatos/blob/main/lab01/sql/peliculas_db.sql)




## Consultas SQL

### 1. Consultar todas las películas

	Esta consulta devuelve todas las películas en la base de datos.

```sql
	SELECT * FROM Peliculas;
```

## Imagen de consulta * from Peliculas
[from Peliculas](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/peliculas_db_consulta01.PNG)




### 2. Consultar películas de Christopher Nolan
	Esta consulta devuelve todas las películas dirigidas por Christopher Nolan.

```sql
SELECT * FROM peliculas_db.peliculas WHERE director = 'Christopher Nolan';
```
## Imagen de consulta WHERE director = 'Christopher Nolan'

[from Director Christopher Nolan ](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/peliculas_db_consulta02.PNG)



### 3. Consultar películas ordenadas por año (descendente)
	Esta consulta ordena las películas por año de lanzamiento en orden descendente.

```sql
SELECT * FROM peliculas_db.peliculas p ORDER BY anio DESC;
```

## Imagen de consulta películas por año de lanzamiento en orden descendente

[from películas por año de lanzamiento en orden descendente](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/peliculas_db_consulta03.PNG)


### 4. Consultar películas lanzadas entre 1990 y 2000
	Esta consulta devuelve las películas que fueron lanzadas entre los años 1990 y 2000.

```sql
SELECT * from peliculas_db.peliculas WHERE anio BETWEEN 1990 AND 2000;
```

## Imagen de consulta películas lanzadas entre 1990 y 2000

[from películas lanzadas entre 1990 y 2000](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/peliculas_db_consulta04.PNG)

### 5. Consultar la cantidad de películas por género
	Esta consulta devuelve la cantidad de películas disponibles en cada género.
```sql
SELECT genero, COUNT(*) as cantidad FROM Peliculas GROUP BY genero;
```


## Imagen de consulta la cantidad de películas por género

[from la cantidad de películas por género](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/peliculas_db_consulta05.PNG)


<hr>

### EJERCICIO IV Bases de Datos con Relaciones - Complejo:  Realizar Consultas y Funciones

Consultas SQL y funciones para interactuar con la base de datos peliculas_complejas. Estos ejemplos muestran cómo realizar consultas básicas, insertar datos en múltiples tablas y gestionar transacciones.

## SQL - peliculas_db:
[Ver SQL](https://github.com/ciberzerone/baseDatos/blob/main/lab01/sql/peliculas_complejo.sql)

## Imagen de base datos: peliculas_db
![Electrodomésticos](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/tabla_peliculas_dbpeliculas.PNG)


## SQL - peliculas_db:
[Ver SQL](https://github.com/ciberzerone/baseDatos/blob/main/lab01/sql/peliculas_db.sql)





### Consultas SQL

## Consulta que devuelva todas las películas

```sql
SELECT * FROM Peliculas;
```
## Imagen de consulta que devuelva todas las películas

[from consulta que devuelva todas las películas](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/peliculas_complejo_consulta01.PNG)



## Consulta que devuelva las películas entre 1980 y 2000
```sql
SELECT * FROM Peliculas WHERE anio BETWEEN 1980 AND 2000;
```
## Imagen de Consulta que devuelva las películas entre 1980 y 2000

[from Consulta que devuelva las películas entre 1980 y 2000](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/peliculas_complejo_consulta02.PNG)



## Consulta que devuelva la cantidad de películas de un género
```sql
SELECT genero, COUNT(*) AS num_peliculas FROM Peliculas GROUP BY genero;
```

## Imagen de Consulta que devuelva la cantidad de películas de un género

[from Consulta que devuelva la cantidad de películas de un género](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/peliculas_complejo_consulta03.PNG)


## Consulta que devuelva todas las películas con sus actores principales y secundarios
```sql
SELECT 
    Peliculas.titulo, 
    Directores.nombre AS director, 
    Actores.nombre AS actor, 
    PeliculasActores.rol
FROM Peliculas
JOIN Directores ON Peliculas.id_director = Directores.id
JOIN PeliculasActores ON Peliculas.id = PeliculasActores.id_pelicula
JOIN Actores ON PeliculasActores.id_actor = Actores.id;
```


## Imagen de Consulta que devuelve todas las películas con sus actores principales y secundarios

[from Consulta que devuelve todas las películas con sus actores principales y secundarios](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/peliculas_complejo_consulta04.PNG)


## Consulta que seleccione todas las películas que tengan un actor específico
```sql
SELECT 
    Peliculas.titulo, 
    Actores.nombre AS actor 
FROM Peliculas
JOIN PeliculasActores ON Peliculas.id = PeliculasActores.id_pelicula
JOIN Actores ON PeliculasActores.id_actor = Actores.id
WHERE Actores.nombre = 'Tom Hanks';
```
## Imagen de Consulta que seleccione todas las películas que tengan un actor específico

[from Consulta que seleccione todas las películas que tengan un actor específico](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/peliculas_complejo_consulta05.PNG)





## Insertar Datos en Varias Tablas a la Vez usando START TRANSACTION y COMMIT
```sql
START TRANSACTION;

-- Insertar un nuevo director y obtener su ID
INSERT INTO Directores (nombre) VALUES ('Jarko');
SET @id_director := LAST_INSERT_ID();

-- Insertar una nueva película y obtener su ID
INSERT INTO Peliculas (titulo, anio, genero) VALUES ('Iron Hack', 2024, 'Accion');
SET @id_pelicula := LAST_INSERT_ID();

-- Insertar un nuevo actor y obtener su ID
INSERT INTO Actores (nombre) VALUES ('Yimmmy');
SET @id_actor := LAST_INSERT_ID();

-- Insertar en la tabla PeliculasActores con la relación de la película y el actor
INSERT INTO PeliculasActores (id_pelicula, id_actor, rol) VALUES (@id_pelicula, @id_actor, 'principal');

COMMIT;

```


## Imagen de Consulta que seleccione todas las películas que tengan un actor específico

[from Consulta que seleccione todas las películas que tengan un actor específico](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/peliculas_complejo_consulta06.PNG)
