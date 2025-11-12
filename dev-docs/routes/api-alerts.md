# API: Alerts (RegisteredAlerts)

Teste as rotas em: https://sky-track-backend.vercel.app/docs#/Stations

Onde encontrar o arquivo: `../skytrack-back/src/alerts/alert.controller.ts`

Pasta: `/alerts`

Endpoints e suas funções:

- GET `/alerts`
  - Desc: Pega todos os alertas existentes
  - Query params: `page`, `limit`, `level`
  - Response: `RegisteredAlertsListDto`

- GET `/alerts/:id`
  - Desc: Pega um alerta especifico com base no UUID
  - Params: `id` (uuid)
  - Response: `RegisteredAlertDto`

- GET `/alerts/mac/:macAddress`
  - Desc: Pega todos os alertas existentes por meio do MacAddress
  - Params: `macAddress` (string)
  - Query params: `page`, `limit`, `level`
  - Response: `RegisteredAlertsListDto`

- POST `/alerts`
  - Desc: Cria um novo alerta no sistema
  - Body: `CreateAlertDto`
  - Response: `RegisteredAlertDto` (201)

- PUT `/alerts/:id`
  - Desc: Atualiza um alerta existente com base no seu UUID
  - Params: `id` (uuid)
  - Body: `UpdateAlertDto`
  - Response: `RegisteredAlertDto`

- DELETE `/alerts/:id`
  - Desc existente com base no seu UUID
  - Params: `id` (uuid)
  - Response: 204 No Content
