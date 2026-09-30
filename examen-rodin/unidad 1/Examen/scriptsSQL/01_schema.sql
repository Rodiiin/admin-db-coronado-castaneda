CREATE DATABASE IF NOT EXISTS selva_viva;
USE selva_viva;

-- Tabla: ubicacion
CREATE TABLE IF NOT EXISTS ubicacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(64) NOT NULL,
    capacidad INT NOT NULL,
    bioma VARCHAR(64) NOT NULL,
    CONSTRAINT chk_capacidad CHECK (capacidad >= 0 AND capacidad <= 12)
);

-- Tabla: animal
CREATE TABLE IF NOT EXISTS animal (
    id INT AUTO_INCREMENT PRIMARY KEY,
    especie VARCHAR(60) NOT NULL,
    nombre VARCHAR(60) NOT NULL,
    edad INT NOT NULL,
    estado_salud VARCHAR(60) NOT NULL,
    id_ubicacion INT NOT NULL
);

-- Tabla: reubicacion
CREATE TABLE IF NOT EXISTS reubicacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    motivo VARCHAR(180) NOT NULL,
    liberado BOOLEAN NOT NULL DEFAULT FALSE,
    id_animal INT NOT NULL,
    id_ubicacion_proveniencia INT NULL, 
    id_ubicacion_trasladada INT NOT NULL,
    CONSTRAINT chk_ubicacion_diferente CHECK (id_ubicacion_proveniencia != id_ubicacion_trasladada)
);

-- Tabla: historial_clinico
CREATE TABLE IF NOT EXISTS historial_clinico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    tipo_sangre VARCHAR(5) NOT NULL,
    descripcion VARCHAR(180) NOT NULL,
    id_animal INT NOT NULL
);