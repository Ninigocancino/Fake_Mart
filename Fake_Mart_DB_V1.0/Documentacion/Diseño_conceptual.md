# Diseño Conceptual - Fake_Mart DB 1.0

Este documento describe el diseño conceptual de la base de datos para Fake Mart, enfocándose en las entidades, sus atributos y las relaciones entre ellas.


## Diagrama Entidad-Relación

## Entidades

### 1. **CLEINTE**
Representa a los clientes que realizan compras en Fake Mart.
- **Atributos**:
  - `Id_Cliente`: Identificador único del cliente.
  - `Nombre_cliente`: Nombre completo del cliente.
  - `Dirección_cliente`: Dirección del cliente.
  - `Teléfono`: Número de teléfono del cliente.
  - `Correo_electronico`: Correo electrónico del cliente.


### 2. **PRODUCTO**
Representa los productos que vende Fake Mart.
- **Atributos**:
  - `Id_producto`: Identificador único del producto.
  - `Nombre_producto`: Nombre del producto.
  - `Precio_producto`: Precio unitario del producto.
  - `Categoria`: Categoría del producto (por ejemplo, "Lácteos", "Bebidas").
  - `Distribuidor`: Nombre del distribuidor del producto.

### 3. **COMPRAS**
Registra las compras realizadas por los clientes.
- **Atributos**:
  - `Id_compra`: Identificador único de la compra.
  - `Id_Cliente`: Identificador del cliente que realizó la compra.
  - `Id_producto`: Identificador del producto comprado.
  - `Cantidad`: Cantidad de productos comprados.
  - `Fecha_hora`: Fecha y hora de la compra.
  - `Subtotal`: Subtotal de la compra.
  - `Monto_total`: Monto total de la compra.

### 4. **INVENTARIO**
Controla el inventario de los productos.
- **Atributos**:
  - `Id_producto`: Identificador del producto.
  - `Cantidad`: Cantidad disponible en stock.
  - `Estatus`: Estatus del producto (por ejemplo, "Disponible", "Agotado").

### 5. **PROVEEDORES**
Representa a los proveedores que suministran productos a Fake Mart.
- **Atributos**:
  - `Id_proveedor`: Identificador único del proveedor.
  - `Nombre_proveedor`: Nombre del proveedor.
  - `R_F_C`: RFC del proveedor.
  - `Telefono_proveedor`: Número de teléfono del proveedor.
  - `Direccion_empresa`: Dirección de la empresa proveedora.
  - `Responsable`: Nombre del responsable del proveedor.

### 6. **PROVEEDORES_PRODUCTOS**
Relaciona los proveedores con los productos que suministran.
- **Atributos**:
  - `Id_proveedor`: Identificador del proveedor.
  - `Id_producto`: Identificador del producto.

## Relaciones