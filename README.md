# Sistema de Inventario (monorepo)

- **backend/**: API Laravel
- **frontend/**: app web (Angular)

## Backend rápido
1. `cd backend`
2. `composer install`
3. Copiar `.env.example` a `.env` y configurar DB
4. `php artisan key:generate`
5. `php artisan migrate`
6. `php artisan serve --host=127.0.0.1 --port=8000`
