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

### 4. Crea una relación MuchosToOne entre empleadosY departamentos. Cada empleado debe pertenecer a un solo departamento, pero un departamento puede tener muchos empleados:
```sql 
ALTER TABLE empleados
ADD CONSTRAINT fk_departamento_empleado
FOREIGN KEY (departamento_id)
REFERENCES departamentos(departamento_id);
```

