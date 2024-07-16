### LAB
<hr>

## EJERCICIO I: Cardinalidad

### 1. Tabla Principal: Libros
- **Grado**: 4
- **Número de columnas**: id_libro, titulo, anio_publicacion, genero
- **Cardinalidad**: Dependerá del número de libros insertados en la tabla. Vamos a asumir que puede ser N libros.

### 2. Tabla Adicional 1: Autores
- **Grado**: 2
- **Número de columnas**: id_autor, nombre
- **Cardinalidad**: Dependerá del número de autores insertados en la tabla. Vamos a asumir que puede ser M autores.

### 3. Tabla Adicional 2: Ejemplares
- **Grado**: 4
- **Número de columnas**: id_ejemplar, id_libro, ubicacion, estado
- **Cardinalidad**: Dependerá del número de ejemplares insertados en la tabla. Vamos a asumir que puede ser P ejemplares.

### 4. Tabla Adicional 3: Editoriales
- **Grado**: 2
- **Número de columnas**: id_editorial, nombre
- **Cardinalidad**: Dependerá del número de editoriales insertados en la tabla. Vamos a asumir que puede ser Q editoriales.

### 5. Tabla Intermedia: LibroAutor
- **Grado**: 2
- **Número de columnas**: id_libro, id_autor
- **Cardinalidad**: Dependerá del número de relaciones entre libros y autores insertados en la tabla. Vamos a asumir que puede ser R relaciones.

<hr>

## EJERCICIO II: Descripción de Entidades, Atributos y Relaciones

### Sistema 1: Biblioteca

#### Entidades y Atributos

- **Libro**
  - Título
  - ISBN
  - Fecha de Publicación

- **Autor**
  - Nombre
  - Fecha de Nacimiento
  - Nacionalidad

- **Género**
  - Nombre
  - Descripción

- **Miembro**
  - Número de Identificación
  - Nombre
  - Dirección
  - Teléfono
  - Correo Electrónico

- **Préstamo**
  - Fecha de Inicio
  - Fecha de Devolución

#### Relaciones
- **Libro-Autor**: Un libro puede tener uno o más autores, y un autor puede haber escrito uno o más libros.
- **Libro-Género**: Un libro puede pertenecer a uno o más géneros, y un género puede tener uno o más libros.
- **Miembro-Préstamo**: Un miembro puede tener uno o más préstamos, y un préstamo está asociado a un miembro.
- **Préstamo-Libro**: Un préstamo puede incluir uno o más libros, y un libro puede ser incluido en diferentes préstamos a lo largo del tiempo.

#### Imagen de ER - Biblioteca
![biblioteca](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/biblioteca.PNG)

#### ER - Biblioteca PDF:
[Ver PDF](https://github.com/ciberzerone/baseDatos/blob/main/lab01/pdf/biblioteca.pdf)

#### SQL - Biblioteca:
[Ver SQL](https://github.com/ciberzerone/baseDatos/blob/main/lab01/sql/biblioteca.sql)

### Sistema 2: Supermercado

#### Entidades y Atributos

- **Producto**
  - Nombre
  - Código de Barras
  - Precio
  - Fecha de Caducidad

- **Categoría**
  - Nombre
  - Descripción

- **Proveedor**
  - Nombre
  - Dirección
  - Teléfono
  - Correo Electrónico

- **Cliente**
  - Número de Cliente
  - Nombre
  - Dirección
  - Teléfono
  - Correo Electrónico

- **Venta**
  - Fecha de Venta
  - Monto Total

- **DetalleVenta**
  - Cantidad
  - Precio Unitario

#### Relaciones
- **Producto-Categoría**: Un producto pertenece a una categoría, y una categoría puede tener varios productos.
- **Producto-Proveedor**: Un producto puede ser suministrado por uno o más proveedores, y un proveedor puede suministrar varios productos.
- **Cliente-Venta**: Un cliente puede realizar una o más ventas, y una venta está asociada a un cliente.
- **Venta-DetalleVenta**: Una venta puede tener varios detalles de venta, y un detalle de venta está asociado a una venta y a un producto.

#### Imagen de ER - Supermercado
![Supermercado](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/supermercado.PNG)

#### ER - Supermercado PDF:
[Ver PDF](https://github.com/ciberzerone/baseDatos/blob/main/lab01/pdf/supermercado.pdf)

#### SQL - Supermercado:
[Ver SQL](https://github.com/ciberzerone/baseDatos/blob/main/lab01/sql/supermercado.sql)

### Sistema 3: Tienda de Electrodomésticos

#### Entidades y Atributos

- **Electrodoméstico**
  - Nombre
  - Modelo
  - Precio
  - Garantía (meses)

- **Categoría**
  - Nombre
  - Descripción

- **Proveedor**
  - Nombre
  - Dirección
  - Teléfono
  - Correo Electrónico

- **Cliente**
  - Número de Cliente
  - Nombre
  - Dirección
  - Teléfono
  - Correo Electrónico

- **Venta**
  - Fecha de Venta
  - Monto Total

- **DetalleVenta**
  - Cantidad
  - Precio Unitario

#### Relaciones
- **Electrodoméstico-Categoría**: Un electrodoméstico pertenece a una categoría, y una categoría puede tener varios electrodomésticos.
- **Electrodoméstico-Proveedor**: Un electrodoméstico puede ser suministrado por uno o más proveedores, y un proveedor puede suministrar varios electrodomésticos.
- **Cliente-Venta**: Un cliente puede realizar una o más ventas, y una venta está asociada a un cliente.
- **Venta-DetalleVenta**: Una venta puede tener varios detalles de venta, y un detalle de venta está asociado a una venta y a un electrodoméstico.

#### Imagen de ER - Tienda de Electrodomésticos
![Electrodomésticos](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/electrodomesticos.PNG)

#### ER - Electrodomésticos PDF:
[Ver PDF](https://github.com/ciberzerone/baseDatos/blob/main/lab01/pdf/electrodomesticos.pdf)

#### SQL - Electrodomésticos:
[Ver SQL](https://github.com/ciberzerone/baseDatos/blob/main/lab01/sql/electrodomesticos.sql)

<hr>

## EJERCICIO III: Consultas Básicas en SQL para la Base de Datos de Películas

Ejemplos de consultas SQL básicas para interactuar con la base de datos `peliculas_db`. 

### Imagen de base datos: peliculas_db
![peliculas_db](https://github.com/ciberzerone/baseDatos/blob/main/lab01/imagen/tabla_peliculas_dbpeliculas.PNG)

### SQL - peliculas_db:
[Ver SQL](https://github.com/ciberzerone/baseDatos/blob/main/lab01/sql/peliculas_db.sql)

### Consultas SQL

#### 1. Consultar todas las películas

Esta consulta devuelve todas las películas en la base de datos.

```sql
SELECT * FROM Peliculas;
