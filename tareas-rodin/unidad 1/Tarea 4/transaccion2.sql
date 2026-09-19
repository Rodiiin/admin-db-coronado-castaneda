START TRANSACTION;

-- 1. Se crea la cabecera de la compra
INSERT INTO compra (total) VALUES (150000.00);
SET @compra_id = LAST_INSERT_ID();

-- 2. Intentar descontar más stock del disponible (Stock actual: 5 - 10 = -5)
UPDATE producto SET stock = stock - 10 WHERE id = 1;

-- 3. Al detectar el error de la restricción, deshacemos la compra huérfana
ROLLBACK;




START TRANSACTION;
INSERT INTO compra (total) VALUES (150000.00);
SET @compra_id = LAST_INSERT_ID();
UPDATE producto SET stock = stock - 10 WHERE id = 1;
ROLLBACK