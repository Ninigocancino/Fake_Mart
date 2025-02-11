
-- Insertar_datos
--Sentencia 01: Insertar clientes
INSERT INTO CLIENTE(Nombre_cliente,Direccion_cliente,Telefono, Email)
VALUES
      ('Juan Perez Ligonio','Calle mirandas 123', '933-555-4444','juan@fake.com'),
      ('Maria Lopez Sepulveda','Calle Hojaldras 234', '933-444-5555', 'maria@fake.com'),
      ('Luisa Sandoval Saravia','Calle Azucenas 345','933-666-3333','luisa@fake.com'),
      ('Santiago Peregrino Mendez','Calle mirandas 124', '933-345-7890','santiago@fake.com'),
      ('Armando Casa Palacios', 'Calle Hojaldras 129', '933-888-9999','armando@fake.com');


--Sentencia 02: Insertar productos
INSERT INTO PRODUCTO('Nombre_producto', 'Precio_producto', 'Categoria', 'Distribuidor')
VALUES
     ('Leche entera 1L', 25.50, 'Lácteos', 'Distribuidora Lácteos S.A.' ),
     ('Pan integral', 15.00, 'Panadería', 'Panadería El Buen Pan'),
     ('Jugo de naranja 1L', 30.00, 'Bebidas', 'Jugos Naturales S.A.'),
     ('Yocur natural', 12.00, 'Lácteos', 'Distribuidora Lácteos S.A.'),
     ('Galleta de avena', 18.00, 'Panadería', 'Panadería El Buen Pan');