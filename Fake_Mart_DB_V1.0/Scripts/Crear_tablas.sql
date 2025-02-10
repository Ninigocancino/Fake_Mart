--Crear Tablas 

--Sentencia 01: Crear la tabla 'CLIENTE'
CREATE TABLE IF NOT EXISTS CLIENTE (
    Id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre_cliente TEXT NOT NULL,
    Direccion_cliente TEXT,
    Telefono TEXT,
    Email TEXT
);
