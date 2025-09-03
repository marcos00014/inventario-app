-- ============================
--  Tablas principales
-- ============================

-- Roles
CREATE TABLE roles (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL UNIQUE -- admin, empleado, usuario
);

-- Usuarios
CREATE TABLE usuarios (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL, -- hash con bcrypt
  rol_id INT NOT NULL REFERENCES roles(id),
  activo BOOLEAN DEFAULT TRUE
);

-- Clientes
CREATE TABLE clientes (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  telefono VARCHAR(50),
  email VARCHAR(150),
  direccion VARCHAR(200),
  activo BOOLEAN DEFAULT TRUE
);

-- Categorías de productos
CREATE TABLE categorias (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL UNIQUE,
  descripcion VARCHAR(200)
);

-- Productos
CREATE TABLE productos (
  id SERIAL PRIMARY KEY,
  codigo VARCHAR(60) NOT NULL UNIQUE,
  nombre VARCHAR(150) NOT NULL,
  descripcion TEXT,
  precio NUMERIC(12,2) NOT NULL,
  stock INT NOT NULL DEFAULT 0,
  categoria_id INT REFERENCES categorias(id),
  activo BOOLEAN DEFAULT TRUE
);

-- Presupuestos (encabezado)
CREATE TABLE presupuestos (
  id SERIAL PRIMARY KEY,
  cliente_id INT NOT NULL REFERENCES clientes(id),
  usuario_id INT NOT NULL REFERENCES usuarios(id),
  fecha DATE NOT NULL DEFAULT CURRENT_DATE,
  estado VARCHAR(20) DEFAULT 'borrador', -- borrador, enviado, aceptado, rechazado
  total NUMERIC(14,2) DEFAULT 0
);

-- Detalle de presupuesto
CREATE TABLE presupuesto_detalles (
  id SERIAL PRIMARY KEY,
  presupuesto_id INT NOT NULL REFERENCES presupuestos(id) ON DELETE CASCADE,
  producto_id INT NOT NULL REFERENCES productos(id),
  cantidad INT NOT NULL,
  precio_unitario NUMERIC(12,2) NOT NULL,
  subtotal NUMERIC(14,2) NOT NULL
);
