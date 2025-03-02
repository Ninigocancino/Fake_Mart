# Diseño Lógico - FakeMart DB 1.0

Este documento describe el diseño lógico de la base de datos para Fake Mart, incluyendo las tablas, campos, claves primarias, claves foráneas y tipos de datos.

## Tablas y campos

### 1. **CLIENTE**
Almacena la información de los clientes de Fake Mart.
- **Campos**:
  - `Id_Cliente` (INT, PK): Identificador único del cliente.
  - `Nombre_cliente` (TEXT, NOT NULL): Nombre completo del cliente.
  - `Dirección_cliente` (TEXT): Dirección del cliente.
  - `Teléfono` (TEXT): Número de teléfono del cliente.
  - `Correo_electronico` (TEXT): Correo electrónico del cliente.

### 2. **PRODUCTO**
Almacena la información de los productos que vende Fake Mart.
- **Campos**:
  - `Id_producto` (INT, PK): Identificador único del producto.
  - `Nombre_producto` (TEXT, NOT NULL): Nombre del producto.
  - `Precio_producto` (REAL, NOT NULL): Precio unitario del producto.
  - `Categoria` (TEXT): Categoría del producto (por ejemplo, "Lácteos", "Bebidas").
  - `Distribuidor` (TEXT): Nombre del distribuidor del producto.

### 3. **COMPRAS**
Registra las compras realizadas por los clientes.
- **Campos**:
  - `Id_compra` (INT, PK): Identificador único de la compra.
  - `Id_Cliente` (INT, FK): Identificador del cliente que realizó la compra.
  - `Id_producto` (INT, FK): Identificador del producto comprado.
  - `Cantidad` (INT, NOT NULL): Cantidad de productos comprados.
  - `Fecha_hora` (TEXT, NOT NULL): Fecha y hora de la compra.
  - `Subtotal` (REAL, NOT NULL): Subtotal de la compra.
  - `Monto_total` (REAL, NOT NULL): Monto total de la compra.

### 4. **INVENTARIO**
Controla el inventario de los productos.
- **Campos**:
  - `Id_producto` (INT, PK, FK): Identificador del producto.
  - `Cantidad` (INT, NOT NULL): Cantidad disponible en stock.
  - `Estatus` (TEXT): Estatus del producto (por ejemplo, "Disponible", "Agotado").

### 5. **PROVEEDORES**
Almacena la información de los proveedores de Fake Mart.
- **Campos**:
  - `Id_proveedor` (INT, PK): Identificador único del proveedor.
  - `Nombre_proveedor` (TEXT, NOT NULL): Nombre del proveedor.
  - `R_F_C` (TEXT): RFC del proveedor.
  - `Telefono_proveedor` (TEXT): Número de teléfono del proveedor.
  - `Direccion_empresa` (TEXT): Dirección de la empresa proveedora.
  - `Responsable` (TEXT): Nombre del responsable del proveedor.

### 6. **PROVEEDORES_PRODUCTOS**
Relaciona los proveedores con los productos que suministran.
- **Campos**:
  - `Id_proveedor` (INT, FK): Identificador del proveedor.
  - `Id_producto` (INT, FK): Identificador del producto.
- **Clave primaria compuesta**: (`Id_proveedor`, `Id_producto`).

## Claves y relaciones
- **Claves primarias (PK)**: Cada tabla tiene una clave primaria que identifica de manera única cada registro.
- **Claves foráneas (FK)**: Las claves foráneas establecen relaciones entre las tablas. Por ejemplo:
  - `COMPRAS.Id_Cliente` hace referencia a `CLIENTE.Id_Cliente`.
  - `COMPRAS.Id_producto` hace referencia a `PRODUCTO.Id_producto`.
  - `INVENTARIO.Id_producto` hace referencia a `PRODUCTO.Id_producto`.
  - `PROVEEDORES_PRODUCTOS.Id_proveedor` hace referencia a `PROVEEDORES.Id_proveedor`.
  - `PROVEEDORES_PRODUCTOS.Id_producto` hace referencia a `PRODUCTO.Id_producto`.


## Tipos de datos

- **INT**: Números enteros.
- **TEXT**: Cadenas de texto.
- **REAL**: Números decimales.