--Crear Tablas 

--Sentencia 01: Crear la tabla 'CLIENTE'
CREATE TABLE IF NOT EXISTS CLIENTE (
    Id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre_cliente TEXT NOT NULL,
    Direccion_cliente TEXT,
    Telefono TEXT,
    Email TEXT
);


--Sentencia 02: Crear la tabla PRODUCTO
CREATE TABLE IF NOT EXISTS PRODUCTO (
    Id_producto INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre_producto TEXT NOT NULL,
    Precio_producto REAL NOT NULL,
    Categoria TEXT,
    Distribuidor TEXT
);

--Sentencia 03: Crear tabla 'COMPRAS' 
CREATE TABLE IF NOT EXISTS COMPRAS (
    Id_compra INTEGER PRIMARY KEY AUTOINCREMENT,
    Id_cliente INTEGER,
    Id_producto INTEGER,
    Cantidad INTEGER NOT NULL,
    Fecha_hora TEXT NOT NULL,
    Subtotal REAL NOT NULL,
    Monto_total REAL NOT NULL,
    FOREIGN KEY (Id_cliente) REFERENCES CLIENTE(Id_cliente),
    FOREIGN KEY (Id_producto) REFERENCES PRODUCTO(Id_producto)
);

--Sentencia 04:Crear la tabla 'INVENTARIO'
CREATE TABLE IF NOT EXISTS INVENTARIO (
    Id_producto INTEGER PRIMARY KEY,
    Cantidad INTEGER NOT NULL,
    Estatus TEXT,
    FOREIGN KEY (Id_producto) REFERENCES PRODUCTO(Id_producto)
);

--Sentencia 05: Crear tabla 'PROVEEDORES'
CREATE TABLE IF NOT EXISTS PROVEEDORES (
    Id_proveedor INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre_proveedor TEXT NOT NULL,
    R_F_C TEXT,
    Telefono_proveedor TEXT,
    Direccion_empresa TEXT,
    Responsable TEXT
 );