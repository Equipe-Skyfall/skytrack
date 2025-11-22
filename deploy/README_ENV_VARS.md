# Configuração de Variáveis de Ambiente para Deploy

## Estrutura do Projeto no VPS

No VPS, os repositórios estão clonados manualmente (não usando git submodules):
```
/path/to/project/
├── skytrack/                    # Repo principal com deploy configs
│   └── deploy/                  # docker-compose files estão aqui
├── skytrack-back/              # Backend clonado separadamente
├── skytrack-front/             # Frontend clonado separadamente  
└── skytrack-broker/            # Broker clonado separadamente
```

Os docker-compose files usam paths relativos (`../skytrack-*`) para referenciar os repos clonados.

## Por que usar variáveis de ambiente em vez de arquivos .env?

1. **Segurança**: Credenciais não ficam no repositório
2. **Flexibilidade**: Diferentes valores para dev/staging/production
3. **CI/CD**: Facilita automação e deploy
4. **Rotação de credenciais**: Mais fácil atualizar apenas as variáveis

## Como usar no VPS (Linux)

### Opção 1: Script de exportação
```bash
# Execute o script para exportar as variáveis
source set-env-vars.sh

# Depois execute o docker-compose
docker-compose up -d
```

### Opção 2: Arquivo de ambiente do sistema
```bash
# Criar arquivo seguro para variáveis
sudo nano /etc/skytrack.env

# Adicionar as variáveis (veja o exemplo no set-env-vars.sh)
# Depois configurar permissões:
sudo chmod 600 /etc/skytrack.env

# Carregar antes do docker-compose:
source /etc/skytrack.env && docker-compose up -d
```

### Opção 3: Systemd service com EnvironmentFile
```bash
# Criar serviço systemd que carrega as variáveis automaticamente
sudo nano /etc/systemd/system/skytrack.service
```

## Como usar no Windows (desenvolvimento)

```powershell
# Execute o script PowerShell
.\set-env-vars.ps1

# Depois execute o docker-compose
docker-compose up -d
```

## Variáveis Obrigatórias

### Database (PostgreSQL)
- `DATABASE_URL`: Connection string do PostgreSQL/RDS
- `DIRECT_DATABASE_URL`: Mesma coisa que DATABASE_URL (para compatibilidade)

### MongoDB
- `MONGO_CONNECTION_STRING`: Connection string do MongoDB Atlas
- `MONGO_DATABASE`: Nome do database (padrão: dadosClima)
- `MONGO_COLLECTION`: Nome da collection (padrão: clima)

### MQTT Broker
- `MQTT_HOST`: URL do broker MQTT (HiveMQ Cloud)
- `MQTT_USERNAME`: Username do MQTT
- `MQTT_PASSWORD`: Password do MQTT

### Frontend
- `VITE_API_URL`: URL da API backend
- `VITE_AUTH_URL`: URL do serviço de autenticação

## Variáveis Opcionais (têm valores padrão)

- `NODE_ENV`: production/development (padrão: production)
- `PORT`: Porta do backend (padrão: 3000)
- `BROKER_PORT`: Porta do broker (padrão: 3001)
- `MIGRATION_ENABLED`: Habilitar migração MongoDB→PostgreSQL (padrão: true)
- `LOG_LEVEL`: Nível de log (padrão: info)

## Checklist de Segurança

✅ Arquivos .env adicionados ao .gitignore  
✅ Credenciais não commitadas no repositório  
✅ Permissões restritivas (600) em arquivos de ambiente no servidor  
✅ Usar TLS para conexões de database  
✅ Rotacionar chaves regularmente  
🔄 Considerar usar um secrets manager (AWS Secrets Manager, HashiCorp Vault)  

## Troubleshooting

### Error: "Environment variable not set"
```bash
# Verificar se as variáveis estão setadas:
env | grep -E "(DATABASE_URL|MONGO_|MQTT_|VITE_)"

# Se não estiverem, execute novamente o script:
source set-env-vars.sh
```

### Error: "Connection refused" 
- Verificar se as URLs de database/MQTT estão corretas
- Verificar se o firewall permite as conexões
- Para RDS: verificar security groups na AWS

### Docker Compose não substitui ${VAR}
- Verificar se as variáveis estão exportadas no shell atual
- Executar `docker-compose config` para ver os valores resolvidos