-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee(
    id varchar(10),
    first_name varchar(10) NOT NULL,
    last_name varchar(10) NOT NULL,
    department varchar(10),
        CONSTRAINT pk_employee_id PRIMARY KEY (id)
);

CREATE TABLE employee_department(
    id varchar(10),
    name varchar(15) NOT NULL,
    description text NOT NULL,
        CONSTRAINT pk_employee_department_id PRIMARY KEY (id)
);

ALTER TABLE employee
    ADD CONSTRAINT fk_employee_department_id FOREIGN KEY (department) REFERENCES employee_department(id);


INSERT INTO employee_department VALUES ('D1', 'Deportes', 'Actividad Fisica');
INSERT INTO employee_department VALUES ('D2', 'Noticias', 'Relato de sucesos ocurridos');
INSERT INTO employee_department VALUES ('D3', 'Finanzas', 'Intercambio de bienes capitales');
INSERT INTO employee_department VALUES ('D4', 'Espectaculos', 'Funcion o diversidad publica');
INSERT INTO employee_department VALUES ('D5', 'Tecnologia', 'Conocimientos tecnicos');
INSERT INTO employee_department VALUES ('D6', 'Ocio', 'Tiempo libre o descanso');

INSERT INTO employee VALUES ('E1', 'Carlos', 'Rangel', 'D1');
INSERT INTO employee VALUES ('E2', 'Ivan', 'Amador', 'D2');
INSERT INTO employee VALUES ('E3', 'Julio', 'Alvarez', 'D3');
INSERT INTO employee VALUES ('E4', 'Matias', 'Rangel', 'D4');


-- ...
