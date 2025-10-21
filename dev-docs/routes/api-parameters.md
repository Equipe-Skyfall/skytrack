# API: Parameters

Onde encontrar o arquivo: `../skytrack-back/src/parameters/parameter.controller.ts`

Pasta: `/parameters`

Endpoints e suas funções:

- GET `/parameters`
  - Desc: Pega todos os parametros existentes
  - Query params: `page`, `limit`, `name`
  - Response: `ParametersListDto`

- GET `/parameters/:id`
  - Desc: Pega um parametro especifico com base no seu UUID
  - Params: `id` (uuid)
  - Response: `ParameterDto`

- GET `/parameters/mac/:macAddress`
  - Desc: Pega todos os parametros de uma estação com base no MacAddress dela
  - Params: `macAddress` (string)
  - Query params: `page`, `limit`, `name`
  - Response: `ParametersListDto`

- GET `/parameters/station/:stationId`
  - Desc: Pega todos os parametros de uma estação com base no seu UUID
  - Params: `stationId` (uuid)
  - Query params: `page`, `limit`, `name`
  - Response: `ParametersListDto`

- POST `/parameters`
  - Desc: Cria um novo parametro no sistema
  - Body: `CreateParameterDto`
  - Response: `ParameterDto` (201)

- PUT `/parameters/:id`
  - Desc: Atualiza um parametro especifico com base no seu UUID
  - Params: `id` (uuid)
  - Body: `UpdateParameterDto`
  - Response: `ParameterDto`

- DELETE `/parameters/:id`
  - Desc: Deleta uma parametro especifico com base no seu UUID
  - Params: `id` (uuid)
  - Response: 204 No Content
