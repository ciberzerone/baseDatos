### LAB
<hr>

### SQL - Gestion de Hotel:
[Ver SQL](https://github.com/ciberzerone/baseDatos/blob/main/lab02/sql/db_hotle.sql)


## Parte I: Diseño de la Base de Datos

### 1. Modelado de Entidades y Relaciones

Basado en el diagrama de entidad-relación (ER) proporcionado, las entidades y atributos son los siguientes:

### Entidades y Atributos

- **Hotel**
  - id (PK)
  - nombre
  - direccion

- **Habitación**
  - id (PK)
  - numero
  - tipo
  - hotel_id (FK)
  - estado

- **Cliente**
  - id (PK)
  - nombre
  - email

- **Reserva**
  - id (PK)
  - cliente_id (FK)
  - habitacion_id (FK)
  - fecha_inicio
  - fecha_fin
  - estado
 

- **Servicio**
  - id (PK)
  - nombre
  - descripcion

- **Reserva_Servicio**
  - reserva_id (FK)
  - servicio_id (FK)

## Parte II: Implementación de Relaciones

2. **One-to-One**: Cliente y Habitación (aunque típicamente una habitación puede ser reservada por varios clientes a lo largo del tiempo, para la asignación específica, se considera one-to-one).

```sql 
-- Añadir columna cliente_id a la tabla habitacion para la relación uno a uno
ALTER TABLE `habitacion`
ADD COLUMN `cliente_id` int(11) UNIQUE;

-- Añadir clave foránea para relacionar habitacion con cliente
ALTER TABLE `habitacion`
ADD CONSTRAINT `habitacion_ibfk_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE SET NULL;
```

3. **One-to-Many**: Hotel y Habitación (un hotel tiene muchas habitaciones).

```sql 
-- Añadir clave foránea para relacionar habitacion con hotel
ALTER TABLE `habitacion`
ADD CONSTRAINT `habitacion_ibfk_hotel` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE CASCADE;

```

4. **Many-to-Many**: Reserva y Servicio (una reserva puede tener muchos servicios y un servicio puede estar en muchas reservas).
```sql 

CONSTRAINT `reserva_servicio_ibfk_1` FOREIGN KEY (`reserva_id`) REFERENCES `reserva` (`id`) ON DELETE CASCADE,
CONSTRAINT `reserva_servicio_ibfk_2` FOREIGN KEY (`servicio_id`) REFERENCES `servicio` (`id`) ON DELETE CASCADE

```
### Imagen de ER - Gestion de Hotel
![Gestion Hotel](https://github.com/ciberzerone/baseDatos/blob/main/lab02/imagen/gestionhotel.png)


<hr>



## Parte III: Alteración de Tablas
5. **Alteración**: Alteración de tabla Reserva, agregar columnas fecha_checkin y fecha_checkout
```sql 
ALTER TABLE Reserva
ADD COLUMN fecha_checkin DATE,
ADD COLUMN fecha_checkout DATE;

INSERT INTO `reserva` (`id`, `cliente_id`, `habitacion_id`, `fecha_inicio`, `fecha_fin`, `estado`, `fecha_checkin`, `fecha_checkout`) VALUES
(1, 1, 1, '2024-07-01', '2024-07-05', 'Activa', '2024-07-01', '2024-07-05'),
(2, 2, 2, '2024-07-06', '2024-07-10', 'Activa', '2024-07-06', '2024-07-10'),
(3, 3, 3, '2024-07-11', '2024-07-15', 'Activa', '2024-07-11', '2024-07-15'),
(4, 4, 4, '2024-07-16', '2024-07-20', 'Activa', '2024-07-16', '2024-07-20'),
(5, 5, 5, '2024-07-21', '2024-07-25', 'Activa', '2024-07-21', '2024-07-25'),
(6, 6, 6, '2024-07-26', '2024-07-30', 'Activa', '2024-07-26', '2024-07-30'),
(7, 7, 7, '2024-08-01', '2024-08-05', 'Activa', '2024-08-01', '2024-08-05'),
(8, 8, 8, '2024-08-06', '2024-08-10', 'Activa', '2024-08-06', '2024-08-10'),
(9, 9, 9, '2024-08-11', '2024-08-15', 'Activa', '2024-08-11', '2024-08-15'),
(10, 10, 10, '2024-08-16', '2024-08-20', 'Activa', '2024-08-16', '2024-08-20')
ON DUPLICATE KEY UPDATE
`cliente_id` = VALUES(`cliente_id`),
`habitacion_id` = VALUES(`habitacion_id`),
`fecha_inicio` = VALUES(`fecha_inicio`),
`fecha_fin` = VALUES(`fecha_fin`),
`estado` = VALUES(`estado`),
`fecha_checkin` = VALUES(`fecha_checkin`),
`fecha_checkout` = VALUES(`fecha_checkout`);

```

### Alteración de Tablas
![Alteración de Tablas](https://github.com/ciberzerone/baseDatos/blob/main/lab02/imagen/parteIII_alteracionTablas.PNG)


## Parte IV: Consultas con Joins
6. Realizar consultas Join
-- 1. Obtener la lista de habitaciones reservadas junto con los nombres de los clientes que las ocupan.

```sql
SELECT 
    h.numero AS habitacion_numero,
    h.tipo AS habitacion_tipo,
    c.nombre AS cliente_nombre,
    c.email AS cliente_email
FROM 
    reserva r
INNER JOIN 
    habitacion h ON r.habitacion_id = h.id
INNER JOIN 
    cliente c ON r.cliente_id = c.id
WHERE 
    r.fecha_checkin IS NOT NULL AND r.fecha_checkout IS NOT NULL;

```

### Habitaciones ocupadas por cliente
![Habitaciones ocupadas por cliente](https://github.com/ciberzerone/baseDatos/blob/main/lab02/imagen/parteIV_habitacion.PNG)


-- 2. Obtener la lista de servicios reservados por un cliente específico junto con los detalles de cada servicio.

```sql
SELECT 
    Cliente.nombre AS nombre_cliente, 
    Servicio.nombre AS nombre_servicio, 
    Servicio.descripcion
FROM 
    Cliente
JOIN 
    Reserva ON Cliente.id = Reserva.cliente_id
JOIN 
    Reserva_Servicio ON Reserva.id = Reserva_Servicio.reserva_id
JOIN 
    Servicio ON Reserva_Servicio.servicio_id = Servicio.id
WHERE 
    Cliente.id = 1;
```
### Servicios reservados por un cliente 
![servicios reservados por un cliente ](https://github.com/ciberzerone/baseDatos/blob/main/lab02/imagen/parteIV_servicio.PNG)



## Parte V: Retos Adicionales
7. Subconsultas y Consultas Avanzadas

- Utilizar subconsultas para obtener la cantidad total de reservas realizadas en un hotel específico en un mes determinado.
### tabla Reserva 
![tabla reserva ](https://github.com/ciberzerone/baseDatos/blob/main/lab02/imagen/consulta7TablaReserva.PNG)


```sql
SELECT 
    (SELECT COUNT(*)
     FROM Reserva r
     JOIN Habitacion h ON r.habitacion_id = h.id
     WHERE h.hotel_id = 1 
     AND MONTH(r.fecha_inicio) = 8
     AND YEAR(r.fecha_inicio) = 2024) AS total_reservas
```
### reservas realizadas en un hotel específico en Agosto 
![reservas realizadas en un hotel específico en Agosto](https://github.com/ciberzerone/baseDatos/blob/main/lab02/imagen/consulta7TablaReservaMesAgosto.PNG)



```sql
SELECT 
    (SELECT COUNT(*)
     FROM Reserva r
     JOIN Habitacion h ON r.habitacion_id = h.id
     WHERE h.hotel_id = 2 
     AND MONTH(r.fecha_inicio) = 7
     AND YEAR(r.fecha_inicio) = 2024) AS total_reservas
```
### reservas realizadas en un hotel específico en Julio 
![reservas realizadas en un hotel específico en julio](https://github.com/ciberzerone/baseDatos/blob/main/lab02/imagen/consulta7TablaReservaMesJulio.PNG)




8. Indexación y Optimización

Implementar índices en las tablas relevantes para mejorar el rendimiento de consultas frecuentes, como la búsqueda de habitaciones disponibles.

- Indices en la Tabla habitacion

```sql
-- Tabla habitacion
CREATE INDEX idx_hotel_id ON habitacion(hotel_id);
CREATE INDEX idx_estado ON habitacion(estado);

-- Tabla reserva
CREATE INDEX idx_cliente_id ON reserva(cliente_id);
CREATE INDEX idx_habitacion_id ON reserva(habitacion_id);
CREATE INDEX idx_fecha_inicio ON reserva(fecha_inicio);
CREATE INDEX idx_fecha_fin ON reserva(fecha_fin);

-- Tabla reserva_servicio
CREATE INDEX idx_reserva_id ON reserva_servicio(reserva_id);
CREATE INDEX idx_servicio_id ON reserva_servicio(servicio_id);

-- Tabla cliente
CREATE UNIQUE INDEX idx_email ON cliente(email);
```
### ER tabla 
![ER tabla](https://github.com/ciberzerone/baseDatos/blob/main/lab02/imagen/consulta7TablaReservaMesJulio.PNG)





9. Transacciones y Control de Concurrencia

Simular escenarios de reservas simultáneas utilizando transacciones para garantizar la consistencia de los datos y evitar conflictos.

10. Uso de Triggers

Crear triggers para automatizar acciones en la base de datos, como la actualización del estado de una habitación al realizarse una reserva o cancelación.

11. Consulta anidada
