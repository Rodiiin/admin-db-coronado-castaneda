-- 1. Crear la base de datos
CREATE DATABASE library;

-- 2. Seleccionar la base de datos 
USE library;

-- 3. Crear la tabla de Usuarios
CREATE TABLE users (
    id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    user VARCHAR(50),
    email VARCHAR(100) UNIQUE NOT NULL,
    PRIMARY KEY (id)
);

-- 4. Crear la tabla de Libros
CREATE TABLE books (
    id INT AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    author VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- 5. Crear la tabla de Préstamos 
CREATE TABLE bookLoan (
    id_loan INT AUTO_INCREMENT,
    dateLoan DATE NOT NULL,
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    PRIMARY KEY (id_loan),
    CONSTRAINT fk_loan_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_loan_book FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE CASCADE ON UPDATE CASCADE
);
