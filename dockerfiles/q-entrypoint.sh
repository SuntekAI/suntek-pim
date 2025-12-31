#!/bin/bash

# --- PostgreSQL Drivers Installation at Runtime ---
echo "Installing PostgreSQL drivers for Queue Worker..."
apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo_pgsql pgsql

php artisan queue:listen --queue=system,default
