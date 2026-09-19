START TRANSACTION;

-- 1. Crear la cabecera de la compra (Total: 2 x $350.50 = $701.00)
INSERT INTO compra (total) VALUES (701.00);

-- 2. Guardar el ID generado para la compra actual
SET @compra_id = LAST_INSERT_ID();

-- 3. Descontar stock (queda en 8)
UPDATE producto SET stock = stock - 2 WHERE id = 2;

-- 4. Registrar detalle de compra
INSERT INTO detalle_compra (cantidad, precio_unitario, subtotal, id_producto, id_compra)
VALUES (2, 350.50, 701.00, 2, @compra_id);

-- 5. Registrar el pago
INSERT INTO pago (monto, id_compra) VALUES (701.00, @compra_id);

-- Confirmar todos los cambios permanentemente
COMMIT;