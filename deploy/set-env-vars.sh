#!/bin/bash
# Script para exportar variáveis de ambiente para VPS
# Execute: source set-env-vars.sh

# ======================
# Server Configuration
# ======================
export NODE_ENV="production"
export PORT="3000"
export IS_SERVERLESS="false"

# ======================
# Broker Configuration
# ======================
export BROKER_PORT="3001"
export MQTT_HOST="mqtt://166d9acce84b47e48593e715d2114d59.s1.eu.hivemq.cloud"
export MQTT_USERNAME="skytrack"
export MQTT_PASSWORD="123456789Skytrack"

# ======================
# Database Configuration (PostgreSQL)
# ======================
# Para RDS AWS ou PostgreSQL externo:
export DATABASE_URL="postgresql://postgres:YOUR_PASSWORD@your-rds-endpoint.region.rds.amazonaws.com:5432/skytrack_db"
export DIRECT_DATABASE_URL="$DATABASE_URL"
export POSTGRES_SSL="require"

# ======================
# MongoDB Configuration
# ======================
export MONGO_CONNECTION_STRING="mongodb+srv://geral:123456789Skytrack@cluster0.vk1vk0a.mongodb.net/?retryWrites=true&w=majority&appName=cluster0"
export MONGO_DATABASE="dadosClima"
export MONGO_COLLECTION="clima"

# ======================
# Migration Configuration
# ======================
export MIGRATION_ENABLED="true"
export MIGRATION_INTERVAL_MINUTES="15"
export MIGRATION_BATCH_SIZE="100"
export MIGRATION_SYNC_NAME="main_sync"

# ======================
# API Configuration
# ======================
export API_PREFIX="api"
export CORS_ORIGINS="http://localhost:5173,http://localhost:3000,https://app.skytrack.space"
export LOG_LEVEL="info"

# ======================
# Frontend Configuration
# ======================
export VITE_API_URL="http://localhost:3000"
export VITE_AUTH_URL="https://auth.skytrack.space"

echo "Variáveis de ambiente exportadas com sucesso!"
echo "Para usar: source set-env-vars.sh"
echo "Depois execute: docker-compose up -d"