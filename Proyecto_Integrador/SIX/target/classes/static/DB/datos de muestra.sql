-- roles (Admin y Vendedor)
INSERT INTO roles (nombre) VALUES
('Administrador'),
('Vendedor');

-- usuarios
INSERT INTO usuarios (nombre, email, password_hash, rol_id) VALUES
('Admin Sistema', 'admin@sistema.com', '$2a$10$xVrLJ4dXJJRGU3AyN7UOB.UGcZXRGYV1EB9N3hdWxYhS5KeI9BIjK', 1), -- password: admin123
('Juan Vendedor', 'juan@sistema.com', '$2a$10$Vc7QVPX3zxJxAVyNUZy6B.6XvwRGX8VqUgqZH8OjZ.B9D0yHVpTfO', 2), -- password: juan123
('Maria Vendedor', 'maria@sistema.com', '$2a$10$Vc7QVPX3zxJxAVyNUZy6B.6XvwRGX8VqUgqZH8OjZ.B9D0yHVpTfO', 2); -- password: maria123

-- tipos de talla
INSERT INTO tipos_talla (nombre) VALUES
('Ropa'),
('Accesorio'),
('Pantalón'),
('Vestido');

-- tallas
INSERT INTO tallas (nombre, tipo_id) VALUES
('S', 1), ('M', 1), ('L', 1), ('XL', 1),
('Único', 2), ('Ajustable', 2),
('28', 3), ('30', 3), ('32', 3), ('34', 3),
('2', 4), ('4', 4), ('6', 4), ('8', 4);

-- categorías
INSERT INTO categorias (nombre) VALUES
('Camisetas'),
('Pantalones'),
('Vestidos'),
('Blusas'),
('Chaquetas'),
('Accesorios');

-- colores
INSERT INTO colores (nombre) VALUES
('Rojo'),
('Azul'),
('Negro'),
('Blanco'),
('Verde'),
('Amarillo'),
('Gris');

-- productos
INSERT INTO productos (codigo, nombre, categoria_id, descripcion, precio, costo) VALUES
('CAM001', 'Camiseta Básica', 1, 'Camiseta básica de algodón', 29.99, 15.00),
('PAN001', 'Pantalón Jeans Clásico', 2, 'Jeans de corte recto', 59.99, 30.00),
('VES001', 'Vestido Casual', 3, 'Vestido casual para el día a día', 49.99, 25.00),
('BLU001', 'Blusa Elegante', 4, 'Blusa para ocasiones especiales', 39.99, 20.00),
('CHA001', 'Chaqueta de Cuero', 5, 'Chaqueta de cuero sintético', 89.99, 45.00),
('ACC001', 'Bufanda de Lana', 6, 'Bufanda tejida a mano', 19.99, 8.00);

-- variantes de productos
INSERT INTO producto_variantes (producto_id, color_id, talla_id, codigo_completo, stock) VALUES
(1, 1, 1, 'CAM001-S-ROJ', 10),
(1, 1, 2, 'CAM001-M-ROJ', 15),
(1, 2, 2, 'CAM001-M-AZU', 8),
(2, 3, 7, 'PAN001-28-NEG', 12),
(2, 3, 8, 'PAN001-30-NEG', 10),
(3, 4, 11, 'VES001-2-BLA', 5),
(3, 4, 12, 'VES001-4-BLA', 7),
(4, 5, 1, 'BLU001-S-VER', 9),
(4, 5, 2, 'BLU001-M-VER', 11),
(5, 3, 1, 'CHA001-S-NEG', 6),
(5, 3, 2, 'CHA001-M-NEG', 8),
(6, 6, 5, 'ACC001-UNI-AMA', 20);

-- ventas
INSERT INTO ventas (subtotal, igv, total, cliente_nombre, cliente_dni, usuario_id, fecha, estado) VALUES
(89.98, 7.20, 97.18, 'Carlos Pérez', '12345678', 2, '2023-05-15 10:30:00', 'completada'),
(59.99, 4.80, 64.79, 'Ana López', '87654321', 2, '2023-05-16 15:45:00', 'completada'),
(119.98, 9.60, 129.58, 'Luis Torres', '45678912', 2, '2023-05-17 12:15:00', 'completada'),
(39.99, 3.20, 43.19, 'María García', '78912345', 3, '2023-05-18 09:20:00', 'anulada');

-- detalles de ventas
INSERT INTO detalle_ventas (venta_id, variante_id, cantidad, precio_unitario, subtotal) VALUES
(1, 1, 1, 29.99, 29.99),
(1, 4, 1, 59.99, 59.99),
(2, 5, 1, 59.99, 59.99),
(3, 2, 2, 29.99, 59.98),
(3, 8, 1, 39.99, 39.99),
(3, 9, 0.5, 39.99, 20.00),
(4, 10, 0.5, 89.99, 39.99);