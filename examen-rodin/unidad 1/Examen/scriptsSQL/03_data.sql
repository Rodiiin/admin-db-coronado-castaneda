USE selva_viva;

-- 1. Insertar Recintos / Ubicaciones
INSERT INTO ubicacion (nombre, capacidad, bioma) VALUES
('Cuarentena Aves', 12, 'Selva Húmeda'),
('Aviario General', 12, 'Selva Húmeda'),
('Reptilario 1', 10, 'Desierto'),
('Felinos - Zona A', 5, 'Bosque Tropical');

-- 2. Insertar Animales
INSERT INTO animal (especie, nombre, edad, estado_salud, id_ubicacion) VALUES
('Jaguar', 'Balam', 4, 'En Observacion', 4),
('Tucán', 'Pico', 2, 'Estable', 1),
('Iguana', 'Iggy', 1, 'Estable', 3);

-- 3. Insertar Historiales Clínicos (Diagnósticos)
INSERT INTO historial_clinico (tipo_sangre, descripcion, id_animal) VALUES
('O+', 'Evaluación general al ingreso. Presenta leve deshidratación.', 1),
('A-', 'Revisión de plumaje y pico. En buen estado general.', 2);

-- 4. Insertar Reubicaciones (Movimientos)
-- Caso 1: Ingreso nuevo del Jaguar (sin proveniencia)
INSERT INTO reubicacion (motivo, liberado, id_animal, id_ubicacion_proveniencia, id_ubicacion_trasladada) VALUES
('Ingreso inicial al refugio tras rescate', FALSE, 1, NULL, 4);

-- Caso 2: Traslado interno del Tucán
INSERT INTO reubicacion (motivo, liberado, id_animal, id_ubicacion_proveniencia, id_ubicacion_trasladada) VALUES
('Traslado preventivo por limpieza del área', FALSE, 2, 1, 2);