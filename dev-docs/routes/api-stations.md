# API: Stations

Teste as rotas em: https://sky-track-backend.vercel.app/docs#/Stations


Onde encontrar o arquivo: `../skytrack-back/src/stations/stations.controller.ts`

Pasta: `/stations`

Endpoints e suas funções:

- GET `/stations`
  - Desc: Pega todas as estações
  - Query params: `page` (int), `limit` (int), `status` (enum)
  - Response: `StationsListDto`

- GET `/stations/:id`
  - Desc: Pega uma estação especifica com base no seu uuid
  - Params: `id` (uuid)
  - Response: `StationDto`

- GET `/stations/mac/:macAddress`
  - Desc: Pegas uma estação especifica pelo MacAddress
  - Params: `macAddress` (string)
  - Response: `StationDto`

- POST `/stations`
  - Desc: Cria uma nova estação no sistema
  - Body: `CreateStationDto`
  - Response: `StationDto` (201)

- PUT `/stations/:id`
  - Desc: Atualiza uma estação com base no seu ID
  - Params: `id` (uuid)
  - Body: `UpdateStationDto`
  - Response: `StationDto`

- DELETE `/stations/:id`
  - Desc: Deleta uma estação com base no seu ID
  - Params: `id` (uuid)
  - Response: 204 No Content

Referências adicionais
- Service: `src/stations/stations.service.ts`
- DTOs: `src/stations/dto/*.ts`
