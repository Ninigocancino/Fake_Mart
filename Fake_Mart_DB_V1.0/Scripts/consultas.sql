
--Sentencia 01: Obtener todos los clientes de la Base de Datos
SELECT * FROM CLIENTE; 

--Sentencia 02: Obtener todos los productos disponibles
SELECT p.Nombre_producto, p.Precio_producto, i.Cantidad, i.Estatus
FROM PRODUCTO p 
JOIN INVENTARIO i on p.Id_producto = i.Id_producto
WHERE i.Estatus = 'Disponible';

--Sentencia 03: Obtener las compras realizadas por un cliente especifico
SELECT c.Nombre_cliente, p.Nombre_producto, co.Cantidad, co.Fecha_hora, co.Monto_total
FROM COMPRAS co 
JOIN CLIENTE c ON co.Id_cliente = c.Id_cliente
JOIN PRODUCTO p ON co.Id_producto = p.Id_producto
WHERE c.Nombre_cliente = 'Juan Perez Ligonio'; 