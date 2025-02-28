# FakeMart DB 1.0

Esta es la primera versión de la base de datos para FakeMart, diseñada para resolver los problemas iniciales del negocio, los cuales se plantean en esta documentación.

## Contexto del problema de negocio

FakeMart es un pequeño mercado familiar, lo que en México se conoce cariñosamente como "la tiendita de la esquina". Durante más de 20 años, este negocio ha sido el sustento de la familia de Don José, ofreciendo productos básicos a la comunidad. Sin embargo, en los últimos 10 años, la llegada de cadenas de tiendas de conveniencia y supermercados a la ciudad, junto con el crecimiento de las compras en línea, ha hecho que los ingresos de Fake Mart no pasen por su mejor momento.

Afortunadamente, Álvaro, el hijo de Don José, es joven, está familiarizado con la tecnología y entiende la importancia de modernizar el negocio para mantenerlo competitivo. Álvaro sabe que, para evitar que el negocio familiar desaparezca, es necesario hacer cambios. Sin embargo, también es consciente de que Don José es reacio a invertir grandes sumas de dinero en tecnología sin ver resultados tangibles.

Por eso, Álvaro ha decidido empezar con algo que no represente una gran inversión pero que tenga un impacto positivo inmediato: digitalizar el control de inventarios y dejar de usar registros en papel. Actualmente, Don José lleva el control de los productos, las ventas y los precios en cuadernos y hojas sueltas, lo que ha generado problemas como:

Pérdida de hojas o registros incompletos.

Falta de control sobre el inventario, lo que lleva a que algunos productos se agoten sin que se note a tiempo.

Dificultad para aplicar descuentos o promociones de manera eficiente.

Imposibilidad de analizar qué productos se venden más o cuáles no tienen salida.

Álvaro cree que, al implementar una base de datos sencilla pero eficiente, FakeMart podrá:

Saber en tiempo real cuántas unidades hay de cada producto.

Registrar las ventas de manera automática y sin errores.

Aplicar descuentos o promociones de manera más organizada.

Tomar decisiones basadas en datos, como qué productos comprar en mayor cantidad o cuáles dejar de surtir.

Con esta primera digitalización, Álvaro espera convencer a Don José de que la tecnología puede ser una aliada para mantener vivo el negocio familiar.

## Descripción de ejercicio

Esta versión de la base de datos busca digitalizar el control de inventario, ventas y proveedores, permitiendo una gestión más eficiente y precisa de los datos.

## Planteamiento del problema

Fake Mart enfrenta los siguientes desafíos:

1. **Control de inventario ineficiente**: No hay un sistema centralizado para saber cuántas unidades hay de cada producto.
2. **Registro manual de ventas**: Las ventas se anotan manualmente en un cuaderno, lo que genera errores y dificulta el análisis de datos.
3. **Dificultad para gestionar proveedores**: No hay un sistema para registrar qué proveedores suministran qué productos.

## Solución propuesta

Implementar una base de datos SQLite con las siguientes tablas:
- **CLIENTE**: Almacena la información de los clientes.
- **PRODUCTO**: Almacena la información de los productos.
- **COMPRAS**: Registra las compras realizadas por los clientes.
- **INVENTARIO**: Controla el inventario de los productos.
- **PROVEEDORES**: Almacena la información de los proveedores.
- **PROVEEDORES_PRODUCTOS**: Relaciona los proveedores con los productos que suministran.

## Instrucción de uso

1. **Requisitos**:
   - SQLite3 instalado.
   - Herramienta para ejecutar consultas SQL (SQLite Browser, CLI, etc.).

2. **Pasos para ejecutar el proyecto**:
   - Crear la base de datos:
     ```bash
     sqlite3 fakemart.db
     ```
   - Ejecutar los scripts en el siguiente orden:
     ```bash
     .read Scripts/tablas.sql
     .read Scripts/insertar_datos.sql
     .read Scripts/consultas.sql
     ```

3. **Consultas de ejemplo**:
   - Obtener todos los clientes:
     ```sql
     SELECT * FROM CLIENTE;
     ```
   - Obtener los productos suministrados por un proveedor específico:
     ```sql
     SELECT pr.Nombre_proveedor, p.Nombre_producto
     FROM PROVEEDORES_PRODUCTOS pp
     JOIN PROVEEDORES pr ON pp.Id_proveedor = pr.Id_proveedor
     JOIN PRODUCTO p ON pp.Id_producto = p.Id_producto
     WHERE pr.Nombre_proveedor = 'Distribuidora Lácteos S.A.';
    ``` 

## Resultados esperados

- **Control de inventario**: Saber en tiempo real cuántas unidades hay de cada producto.
- **Registro de ventas**: Llevar un control preciso de las compras realizadas por los clientes.
- **Gestión de proveedores**: Registrar qué proveedores suministran qué productos.

## Licencia 

Este proyecto está bajo la licencia [MIT](../../LICENSE).