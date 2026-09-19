USE sistema_ventas;

-- Productos iniciales de prueba (incluye stock limitado para probar fallos de stock)
INSERT INTO producto (nombre, costo, stock) VALUES
('Laptop Gamer Asus', 15000.00, 5),
('Mouse Inalámbrico', 350.50, 10),
('Teclado Mecánico RGB', 1200.00, 2),
('Monitor 27 Pulgadas 144Hz', 4500.00, 0); -- Producto agotado para pruebas

-- Registro de una compra histórica completa
INSERT INTO compra (id, fecha, total) VALUES 
(1, NOW(), 15350.50);

-- Detalle de la compra #1
INSERT INTO detalle_compra (cantidad, precio_unitario, subtotal, id_producto, id_compra) VALUES
(1, 15000.00, 15000.00, 1, 1),
(1, 350.50, 350.50, 2, 1);

-- Pago de la compra #1
INSERT INTO pago (monto, id_compra) VALUES 
(15350.50, 1);