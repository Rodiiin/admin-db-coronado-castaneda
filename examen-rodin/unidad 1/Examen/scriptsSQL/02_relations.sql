USE selva_viva;

-- Relación: Un animal pertenece a una ubicación
ALTER TABLE animal
    ADD CONSTRAINT fk_animal_ubicacion 
    FOREIGN KEY (id_ubicacion) REFERENCES ubicacion(id);

-- Relaciones: Bitácora de reubicaciones (Animal, Origen y Destino)
ALTER TABLE reubicacion
    ADD CONSTRAINT fk_reub_animal 
    FOREIGN KEY (id_animal) REFERENCES animal(id) ON DELETE CASCADE,
    
    ADD CONSTRAINT fk_reub_origen 
    FOREIGN KEY (id_ubicacion_proveniencia) REFERENCES ubicacion(id),
    
    ADD CONSTRAINT fk_reub_destino 
    FOREIGN KEY (id_ubicacion_trasladada) REFERENCES ubicacion(id);

-- Relación: Historial clínico con el animal
ALTER TABLE historial_clinico
    ADD CONSTRAINT fk_historial_animal 
    FOREIGN KEY (id_animal) REFERENCES animal(id) ON DELETE CASCADE;