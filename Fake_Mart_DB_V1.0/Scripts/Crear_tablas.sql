--Crear Tablas 

--Sentencia 01: Crear la tabla 'CLIENTE'
CREATE TABLE IF NOT EXISTS CLIENTE (
    Id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre_cliente TEXT NOT NULL,
    Direccion_cliente TEXT,
    Telefono TEXT,
    Email TEXT
);


--Sentencia 01: Crear la tabla PRODUCTO
CREATE TABLE IF NOT EXISTS PRODUCTO (
    Id_producto INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre_producto TEXT NOT NULL,
    Precio_producto REAL NOT NULL,
    Categoria TEXT,
    Distribuidor TEXT
);