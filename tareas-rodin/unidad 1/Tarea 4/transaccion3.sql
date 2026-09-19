START TRANSACTION;

-- 1. Se crea la cabecera de la compra
INSERT INTO compra (total) VALUES (1200.00);
SET @compra_id = LAST_INSERT_ID();

-- 2. Se descuenta el stock correctamente (Teclado Mecánico)
UPDATE producto SET stock = stock - 1 WHERE id = 3;

-- 3. Se inserta el detalle correctamente
INSERT INTO detalle_compra (cantidad, precio_unitario, subtotal, id_producto, id_compra)
VALUES (1, 1200.00, 1200.00, 3, @compra_id);

-- 4. Intentar registrar un pago inválido de $0.00
INSERT INTO pago (monto, id_compra) VALUES (0.00, @compra_id);

-- 5. Se cancela toda la transacción (el stock de la laptop vuelve a su estado original)
ROLLBACK;




START TRANSACTION;
INSERT INTO compra (total) VALUES (1200.00);
SET @compra_id = LAST_INSERT_ID();
UPDATE producto SET stock = stock - 1 WHERE id = 3;
INSERT INTO detalle_compra (cantidad, precio_unitario, subtotal, id_producto, id_compra)
VALUES (1, 1200.00, 1200.00, 3, @compra_id);
INSERT INTO pago (monto, id_compra) VALUES (0.00, @compra_id);
ROLLBACK;