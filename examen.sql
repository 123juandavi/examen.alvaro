CREATE DATABASE db_ventas;

USE db_ventas;


CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    direccion VARCHAR(200),
    telefono VARCHAR(20),
    correo_electronico VARCHAR(100)
);


CREATE TABLE prenda (
    id_prenda INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(100),
    color VARCHAR(50),
    talla VARCHAR(10),
    precio DECIMAL(10, 2),
    genero VARCHAR(20),
    material VARCHAR(100)
);


CREATE TABLE proveedor (
    id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    direccion VARCHAR(200),
    telefono VARCHAR(20),
    sitio_web VARCHAR(100)
);


CREATE TABLE venta (
    id_venta INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    hora TIME,
    monto_total DECIMAL(10, 2),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);


CREATE TABLE empleado (
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    puesto VARCHAR(100),
    fecha_contratacion DATE,
    salario DECIMAL(10, 2)
);


CREATE TABLE detalle_venta (
    id_detalle_venta INT PRIMARY KEY AUTO_INCREMENT,
    id_venta INT,
    id_prenda INT,
    cantidad INT,
    subtotal DECIMAL(10, 2),
    FOREIGN KEY (id_venta) REFERENCES venta(id_venta),
    FOREIGN KEY (id_prenda) REFERENCES prenda(id_prenda)
);



INSERT INTO cliente (nombre, apellido, fecha_nacimiento, direccion, telefono, correo_electronico)
VALUES ('Juan', 'Pérez', '1990-05-15', '123 Calle Principal', '1234567890', 'juan@example.com');

INSERT INTO prenda (tipo, color, talla, precio, genero, material)
VALUES ('Camisa', 'Azul', 'M', 29.99, 'Hombre', 'Algodón');

INSERT INTO proveedor (nombre, direccion, telefono, sitio_web)
VALUES ('Proveedor A', '456 Avenida Secundaria', '9876543210', 'proveedora.com');

INSERT INTO venta (fecha, hora, monto_total, id_cliente)
VALUES ('2023-08-31', '14:30:00', 100.00, 1);

INSERT INTO empleado (nombre, puesto, fecha_contratacion, salario)
VALUES ('Luisa', 'Vendedora', '2022-01-10', 1500.00);

INSERT INTO detalle_venta (id_venta, id_prenda, cantidad, subtotal)
VALUES (1, 1, 2, 59.98);

