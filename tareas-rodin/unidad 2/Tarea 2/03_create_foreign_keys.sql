
USE `coronado-castaneda`;

ALTER TABLE pets
    ADD CONSTRAINT fk_pets_clients
    FOREIGN KEY (client_id) REFERENCES clients(id)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE appointments
    ADD CONSTRAINT fk_appointments_veterinarians
    FOREIGN KEY (veterinarian_id) REFERENCES veterinarians(id)
    ON DELETE CASCADE ON UPDATE CASCADE,
    ADD CONSTRAINT fk_appointments_pets
    FOREIGN KEY (pet_id) REFERENCES pets(id)
    ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prescriptions
    ADD CONSTRAINT fk_prescriptions_drugs
    FOREIGN KEY (drug_id) REFERENCES drugs(id)
    ON DELETE CASCADE ON UPDATE CASCADE,
    ADD CONSTRAINT fk_prescriptions_appointments
    FOREIGN KEY (appointment_id) REFERENCES appointments(id)
    ON DELETE CASCADE ON UPDATE CASCADE;

