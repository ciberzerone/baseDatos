### LAB
<hr>

## Parte I: Diseño de la Base de Datos

### Modelado de Entidades y Relaciones

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



<hr>

## Parte II: Implementación de Relaciones

2. **One-to-One**: Cliente y Habitación (aunque típicamente una habitación puede ser reservada por varios clientes a lo largo del tiempo, para la asignación específica, se considera one-to-one).
3. **One-to-Many**: Hotel y Habitación (un hotel tiene muchas habitaciones).
4. **Many-to-Many**: Reserva y Servicio (una reserva puede tener muchos servicios y un servicio puede estar en muchas reservas).


## Parte III: Alteración de Tablas
5. Realizar modificaciones 


## Parte IV: Alteración de Tablas
