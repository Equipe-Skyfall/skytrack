# Script PowerShell para exportar variáveis de ambiente
# Execute: .\set-env-vars.ps1

# ======================
# Server Configuration
# ======================
$Env:NODE_ENV = "production"
$Env:PORT = "3000"
$Env:IS_SERVERLESS = "false"

# ======================
# Broker Configuration
# ======================
$Env:BROKER_PORT = "3001"
$Env:MQTT_HOST = "mqtt://166d9acce84b47e48593e715d2114d59.s1.eu.hivemq.cloud"
$Env:MQTT_USERNAME = "skytrack"
$Env:MQTT_PASSWORD = "123456789Skytrack"

# ======================
# Database Configuration (PostgreSQL)
# ======================
# Para RDS AWS ou PostgreSQL externo:
$Env:DATABASE_URL = "postgresql://postgres:YOUR_PASSWORD@your-rds-endpoint.region.rds.amazonaws.com:5432/skytrack_db"
$Env:DIRECT_DATABASE_URL = $Env:DATABASE_URL
$Env:POSTGRES_SSL = "require"

# ======================
# MongoDB Configuration
# ======================
$Env:MONGO_CONNECTION_STRING = "mongodb+srv://geral:123456789Skytrack@cluster0.vk1vk0a.mongodb.net/?retryWrites=true&w=majority&appName=cluster0"
$Env:MONGO_DATABASE = "dadosClima"
$Env:MONGO_COLLECTION = "clima"

# ======================
# Migration Configuration
# ======================
$Env:MIGRATION_ENABLED = "true"
$Env:MIGRATION_INTERVAL_MINUTES = "15"
$Env:MIGRATION_BATCH_SIZE = "100"
$Env:MIGRATION_SYNC_NAME = "main_sync"

# ======================
# API Configuration
# ======================
$Env:API_PREFIX = "api"
$Env:CORS_ORIGINS = "http://localhost:5173,http://localhost:3000,https://app.skytrack.space"
$Env:LOG_LEVEL = "info"

# ======================
# Frontend Configuration
# ======================
$Env:VITE_API_URL = "http://localhost:3000"
$Env:VITE_AUTH_URL = "https://auth.skytrack.space"

Write-Host "Variáveis de ambiente exportadas com sucesso!" -ForegroundColor Green
Write-Host "Agora execute: docker-compose up -d" -ForegroundColor Yellow