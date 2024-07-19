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
  - fecha_checkin
  - fecha_checkout

- **Servicio**
  - id (PK)
  - nombre
  - descripcion

- **Reserva_Servicio**
  - reserva_id (FK)
  - servicio_id (FK)


### Imagen de ER - Gestion de Hotel
![biblioteca](https://github.com/ciberzerone/baseDatos/blob/main/lab02/imagen/gestionhotel.png)


<hr>

## Parte II: Implementación de Relaciones

2. **One-to-One**: Cliente y Habitación (aunque típicamente una habitación puede ser reservada por varios clientes a lo largo del tiempo, para la asignación específica, se considera one-to-one).
3. **One-to-Many**: Hotel y Habitación (un hotel tiene muchas habitaciones).
4. **Many-to-Many**: Reserva y Servicio (una reserva puede tener muchos servicios y un servicio puede estar en muchas reservas).


## Parte III: Alteración de Tablas
5. Realizar modificaciones 


## Parte IV: Alteración de Tablas
6. Consultas Utilizando Joins
Realizar consultas que involucren joins para obtener información detallada, por ejemplo:
Obtener la lista de habitaciones reservadas junto con los nombres de los clientes que las ocupan.
Obtener la lista de 

## Parte 5: Retos Adicionales
7. Subconsultas y Consultas Avanzadas

Utilizar subconsultas para obtener la cantidad total de reservas realizadas en un hotel específico en un mes determinado.
8. Indexación y Optimización

Implementar índices en las tablas relevantes para mejorar el rendimiento de consultas frecuentes, como la búsqueda de habitaciones disponibles.

9. Transacciones y Control de Concurrencia

Simular escenarios de reservas simultáneas utilizando transacciones para garantizar la consistencia de los datos y evitar conflictos.

10. Uso de Triggers

Crear triggers para automatizar acciones en la base de datos, como la actualización del estado de una habitación al realizarse una reserva o cancelación.

11. Consulta anidada
