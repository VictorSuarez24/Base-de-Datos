CREATE DATABASE IF NOT EXISTS TiendaInformatica;
USE TiendaInformatica;

-- Creación de la tabla de Clientes
CREATE TABLE IF NOT EXISTS Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Apellido VARCHAR(255) NOT NULL,
    CorreoElectronico VARCHAR(255) UNIQUE NOT NULL,
    Telefono VARCHAR(20)
) ENGINE=InnoDB;

-- Creación de la tabla de Pedidos
CREATE TABLE IF NOT EXISTS Pedidos (
    PedidoID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT NOT NULL,
    FechaPedido DATE NOT NULL,
    EstadoPedido VARCHAR(50) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Creación de la tabla de Componentes
CREATE TABLE IF NOT EXISTS Componentes (
    ComponenteID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Descripcion TEXT,
    Precio DECIMAL(10, 2) NOT NULL,
    Stock INT NOT NULL
);

-- Creación de la tabla de Ordenadores
CREATE TABLE IF NOT EXISTS Ordenadores (
    OrdenadorID INT AUTO_INCREMENT PRIMARY KEY,
    PedidoID INT NOT NULL,
    FechaMontaje DATE NOT NULL,
    CostoTotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID)
);

-- Creación de la tabla PedidoComponente
CREATE TABLE IF NOT EXISTS PedidoComponente (
    PedidoID INT NOT NULL,
    ComponenteID INT NOT NULL,
    Cantidad INT NOT NULL,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ComponenteID) REFERENCES Componentes(ComponenteID),
    PRIMARY KEY (PedidoID, ComponenteID)
);

-- Inserciones de ejemplo para Clientes
INSERT INTO Clientes (Nombre, Apellido, CorreoElectronico, Telefono) VALUES
('Juan', 'Pérez', 'juan.perez@example.com', '555-1234'),
('Ana', 'García', 'ana.garcia@example.com', '555-5678');

-- Inserciones de ejemplo para Componentes
INSERT INTO Componentes (Nombre, Descripcion, Precio, Stock) VALUES
('Procesador Intel i7', 'Procesador de alta velocidad', 300.00, 10),
('Tarjeta Gráfica Nvidia GTX 1080', 'Tarjeta gráfica para juegos', 700.00, 5),
('Disco Duro SSD 1TB', 'Disco duro sólido de alta capacidad', 150.00, 20);

-- Inserciones de ejemplo para Pedidos
INSERT INTO Pedidos (ClienteID, FechaPedido, EstadoPedido) VALUES
(1, CURDATE(), 'En Proceso'),
(2, CURDATE(), 'Enviado');

-- Inserciones de ejemplo para Ordenadores
INSERT INTO Ordenadores (PedidoID, FechaMontaje, CostoTotal) VALUES
(1, CURDATE(), 1150.00);

-- Inserciones de ejemplo para PedidoComponente
INSERT INTO PedidoComponente (PedidoID, ComponenteID, Cantidad) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1);


SELECT Pedidos.PedidoID, Pedidos.FechaPedido, Pedidos.EstadoPedido, Componentes.Nombre AS NombreComponente, PedidoComponente.CantidadFROM Pedidos
JOIN PedidoComponente ON Pedidos.PedidoID = PedidoComponente.PedidoID
JOIN Componentes ON PedidoComponente.ComponenteID = Componentes.ComponenteID
JOIN Clientes ON Pedidos.ClienteID = Clientes.ClienteID
WHERE Clientes.Nombre IN ('Juan', 'Ana') AND Clientes.Apellido IN ('Pérez', 'García');

SELECT ComponenteID, Nombre, Descripcion, Precio, Stock 
FROM Componentes;

SELECT DISTINCT Clientes.ClienteID, Clientes.Nombre, Clientes.Apellido
FROM Clientes
JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID
JOIN Ordenadores ON Pedidos.PedidoID = Ordenadores.PedidoID
JOIN PedidoComponente ON Ordenadores.PedidoID = PedidoComponente.PedidoID
JOIN Componentes ON PedidoComponente.ComponenteID = Componentes.ComponenteID
WHERE Componentes.Nombre = 'Tarjeta Gráfica Nvidia GTX 1080';



SELECT Ordenadores.OrdenadorID, Pedidos.PedidoID, Pedidos.FechaPedido, Pedidos.EstadoPedido,
       Componentes.ComponenteID, Componentes.Nombre AS NombreComponente, Componentes.Descripcion, Componentes.Precio
FROM Ordenadores
JOIN Pedidos ON Ordenadores.PedidoID = Pedidos.PedidoID
JOIN PedidoComponente ON Pedidos.PedidoID = PedidoComponente.PedidoID
JOIN Componentes ON PedidoComponente.ComponenteID = Componentes.ComponenteID
WHERE Pedidos.EstadoPedido = 'En Proceso';

