# API: Tipo Alerta

Onde encontrar o arquivo: `../skytrack-back/src/tipo-alerta/tipo-alerta.controller.ts`

Pasta: `/tipo-alerta`

Endpoints e suas funções:

- GET `/tipo-alerta` — Pega todos os tipos de alertas
  - Response: array of `TipoAlertaDto`

- GET `/tipo-alerta/:id` — Pega todos os tipos de alertas por UUID
  - Params: `id` (uuid)
  - Response: `TipoAlertaDto`

- POST `/tipo-alerta` — Cria um novo tipo de alerta no sistema
  - Body: `CreateTipoAlertaDto`
  - Response: `TipoAlertaDto` (201)

- PUT `/tipo-alerta/:id` — Atualiza um tipo de alerta no sistema com base no UUID
  - Params: `id` (uuid)
  - Body: `UpdateTipoAlertaDto`
  - Response: `TipoAlertaDto`

- DELETE `/tipo-alerta/:id` — Deleta um tipo de alerta do sistema com base no UUID
  - Params: `id` (uuid)
  - Response: 204 No Content
