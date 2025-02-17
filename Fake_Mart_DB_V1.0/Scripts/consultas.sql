
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

--Sentencia 04: Obtener los productos suministrados por un proveedor especifico
SELECT pr.Nombre_proveedor, p.Nombre_producto
FROM PROVEEDORES_PRODUCTOS PP 
JOIN PROVEEDORES pr ON pp.Id_proveedor = pr.Id_proveedor
JOIN PRODUCTO p ON pp.Id_producto = p.Id_producto
WHERE pr.Nombre_proveedor = 'Distribuidora Lácteos S.A.';

--Sentencia 05: Verificar el inventario de un producto especifico
SELECT p.Nombre_producto, i.Cantidad, i.Estatus
FROM INVENTARIO i 
JOIN PRODUCTO p ON i.Id_producto = p.Id_producto
WHERE p.Nombre_Producto = 'Leche entera 1L'; 
