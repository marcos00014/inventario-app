# Sistema de Gestión de Inventario

> Proyecto web para que pequeños y medianos comercios gestionen su inventario de forma simple, dejando atrás cuadernos o planillas y reduciendo errores humanos. Pensado para que cualquier comercio local (almacén, ferretería, librería, indumentaria, etc.) lleve el stock al día con distintos niveles de acceso por tipo de usuario. 

## Integrantes del grupo
- Borrero Kinen Mateo  
- Godoy Valentin  
- Peña Marcos  
- Salvini Augusto  

## Idea general
Desarrollo de una **aplicación web** para gestión eficiente de inventario en comercios locales, evitando registros manuales y errores, con **roles** que limitan acciones según el tipo de usuario.

## Objetivos
- Facilitar el control del stock disponible.  
- Ofrecer una interfaz **intuitiva** para usuarios con poca experiencia digital.  
- Evitar pérdidas económicas por errores de inventario.  
- Agilizar altas, ediciones y bajas de productos.  
- Controlar acciones según **rol** del usuario.

## Roles y permisos
- **Administrador**: acceso total; **agrega, modifica y elimina** productos, y **cambia stock**.  
- **Empleado**: **ve productos** y **actualiza solo stock**.  
- **Usuario**: **solo visualiza** productos.

## Funcionalidades principales
- **Registro** e **inicio de sesión** con validación segura.  
- **Listado** de productos.  
- **Alta** de productos (**solo admin**).  
- **Edición** de productos:  
  - **Admin**: nombre, descripción, precio y stock.  
  - **Empleado**: **solo stock**.  
- **Eliminación** de productos (**solo admin**).  
- **Protección de rutas** mediante **tokens de autenticación**.

## Tecnologías (pensadas)
- **Frontend**: Angular  
- **Backend**: Laravel (PHP)  
- **Base de datos**: PostgreSQL o MySQL  
- **ORM**: Eloquent  
- **Seguridad**:  
  - Middleware de autenticación (Laravel)  
  - Hash de contraseñas con **bcrypt**  
- **Estilos**: CSS personalizado o **Angular Material**  
- **Herramientas**: Postman, GitHub, Visual Studio Code, Composer, Angular CLI

## Próximos agregados
- **Nombres de clientes**, secciones de **usuarios**, **clientes** y **presupuestos**.  
- **Admin** y **Empleado**: pueden **hacer presupuestos** y **gestionar stock**.
