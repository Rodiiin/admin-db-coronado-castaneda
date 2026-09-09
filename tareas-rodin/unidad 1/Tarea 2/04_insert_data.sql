USE `coronado-castaneda`;

-- 1. Clientes
INSERT INTO clients (DNI, name, lastName, phone, email) VALUES
('11111111-1', 'Juan', 'Pérez', '912345678', 'juan.perez@email.com'),
('22222222-2', 'María', 'Gómez', '923456789', 'maria.gomez@email.com'),
('33333333-3', 'Carlos', 'López', '934567890', 'carlos.lopez@email.com'),
('44444444-4', 'Ana', 'Martínez', '945678901', 'ana.martinez@email.com'),
('55555555-5', 'Pedro', 'Sánchez', '956789012', 'pedro.sanchez@email.com');

-- 2. Mascotas
INSERT INTO pets (name, species, breed, birthday, client_id) VALUES
('Firulais', 'Perro', 'Labrador', '2020-05-10', 1),
('Michi', 'Gato', 'Siamés', '2021-08-15', 2),
('Rex', 'Perro', 'Pastor Alemán', '2019-03-22', 1),
('Pelusa', 'Conejo', 'Enano', '2022-01-05', 3),
('Thor', 'Perro', 'Bulldog', '2021-11-30', 4);

-- 3. Veterinarios
INSERT INTO veterinarians (DNI, name, lastName, specialty, phone) VALUES
('66666666-6', 'Laura', 'Torres', 'Cirugía', '967890123'),
('77777777-7', 'Diego', 'Ramírez', 'Dermatología', '978901234'),
('88888888-8', 'Sofia', 'Castro', 'General', '989012345'),
('99999999-9', 'Javier', 'Morales', 'Oftalmología', '990123456'),
('10101010-0', 'Elena', 'Rojas', 'Cardiología', '901234567');

-- 4. Citas / Atenciones Médicas
INSERT INTO appointments (appointment_date, diagnostic, cost, veterinarian_id, pet_id) VALUES
('2026-03-01 10:00:00', 'Chequeo general y vacunación', 35.00, 3, 1),
('2026-03-01 11:30:00', 'Infección cutánea en la oreja', 45.00, 2, 2),
('2026-03-02 09:15:00', 'Revisión por cojera en pata posterior', 50.00, 1, 3),
('2026-03-02 14:00:00', 'Corte de uñas y revisión dental', 25.00, 3, 4),
('2026-03-03 16:45:00', 'Problema respiratorio leve', 40.00, 5, 5);

-- 5. Medicamentos
INSERT INTO drugs (code, name, laboratory, unit_price) VALUES
('DRUG001', 'Amoxicilina 250mg', 'Laboratorio Alfa', 12.50),
('DRUG002', 'Meloxicam Jarabe', 'VetPharm', 18.00),
('DRUG003', 'Ketoconazol Crema', 'DermoVet', 15.20),
('DRUG004', 'Antiparasitario Interno', 'PetHealth', 8.50),
('DRUG005', 'Gotas Oftálmicas', 'OftaVet', 22.00);

-- 6. Prescripciones
INSERT INTO prescriptions (drug_id, appointment_id, quantity, instructions) VALUES
(1, 1, 10, '1 pastilla cada 12 horas por 5 días'),
(3, 2, 1, 'Aplicar en la zona afectada 2 veces al día por 7 días'),
(2, 3, 1, 'Dar 2ml cada 24 horas por 3 días'),
(4, 4, 1, 'Administrar una dosis única por vía oral'),
(1, 5, 14, '1 pastilla cada 12 horas por 7 días');