
--Sentencia 01: Obtener todos los clientes de la Base de Datos
SELECT * FROM CLIENTE; 

--Sentencia 02: Obtener todos los productos disponibles
SELECT p.Nombre_producto, p.Precio_producto, i.Cantidad, i.Estatus
FROM PRODUCTO p 
JOIN INVENTARIO i on p.Id_producto = i.Id_producto
WHERE i.Estatus = 'Disponible';