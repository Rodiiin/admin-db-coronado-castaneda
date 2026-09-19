CREATE DATABASE IF NOT EXISTS sistema_ventas;
USE sistema_ventas;

-- 1. Tabla Producto
CREATE TABLE IF NOT EXISTS producto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(400) NOT NULL,
    costo DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    CONSTRAINT chk_stock_positivo CHECK (stock >= 0)
);

-- 2. Tabla Compra
CREATE TABLE IF NOT EXISTS compra (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    total DECIMAL(10,2) NOT NULL
);

-- 3. Tabla Detalle de Compra
CREATE TABLE IF NOT EXISTS detalle_compra (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    id_producto INT NOT NULL,
    id_compra INT NOT NULL,
    CONSTRAINT chk_cantidad_positiva CHECK (cantidad > 0),
    CONSTRAINT fk_detalle_producto FOREIGN KEY (id_producto) REFERENCES producto(id),
    CONSTRAINT fk_detalle_compra FOREIGN KEY (id_compra) REFERENCES compra(id) ON DELETE CASCADE
);

-- 4. Tabla Pago
CREATE TABLE IF NOT EXISTS pago (
    id INT AUTO_INCREMENT PRIMARY KEY,
    monto DECIMAL(10,2) NOT NULL,
    fecha_pago DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    id_compra INT NOT NULL,
    CONSTRAINT chk_monto_positivo CHECK (monto > 0),
    CONSTRAINT fk_pago_compra FOREIGN KEY (id_compra) REFERENCES compra(id) ON DELETE CASCADE
);