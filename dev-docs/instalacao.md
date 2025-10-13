# Manual de Instalação do SkyTrack

## Visão Geral

Este documento foi desenvolvido para apoiar a instalação, configuração e utilização do SkyTrack. A aplicação é composta por um frontend, responsável pela interface gráfica e interação com o usuário, e um backend, que cuida do processamento de dados, regras de negócio e integração com o banco de dados.

---

## Frontend - SkyTrack

### Pré-requisitos

* Node.js v18 ou superior
* npm v9 ou superior (vem junto com o Node.js)
* Git
* Editor de código (ex.: VS Code)

### Passo a passo

1.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/Equipe-Skyfall/skytrack-front.git](https://github.com/Equipe-Skyfall/skytrack-front.git)
    ```

2. **Navegue até a pasta:**
    ```bash
    cd skytrack-front/frontend
    ```

3.  **Crie um arquivo `.env`** na raiz da pasta `frontend` com as seguintes configurações:
    ```
    VITE_API_URL="http://localhost:3000"
    ```
    *(confira se o backend está rodando nessa porta)*

4.  **Instale as dependências:**
    ```bash
    npm install
    ```

5.  **Inicie o servidor de desenvolvimento:**
    ```bash
    npm run dev
    ```

6. **Abra no navegador a URL exibida no terminal** (ex.: `http://localhost:5173/`).

---

## Backend - SkyTrack

### Pré-requisitos

* Node.js v16 ou superior
* PostgreSQL v12 ou superior (ou usar Docker)
* npm ou yarn

### Passo a passo

1. **Clone o repositório:**
    ```bash
    git clone [https://github.com/Equipe-Skyfall/skytrack-back.git](https://github.com/Equipe-Skyfall/skytrack-back.git)
    ```

2. **Acesse a pasta do projeto:**
    ```bash
    cd skytrack-back
    ```

3. **Crie o arquivo `.env`** com as variáveis de ambiente (exemplo):
    ```
    PORT=3000
    NODE_ENV development
    DATABASE_URL="postgresql://postgres:senha@localhost:5432/skytrack
    ```
    *(ajuste a conexão conforme seu banco local ou Supabase)*

4. **Instale as dependências:**
    ```bash
    npm install
    ```

5. **Configure o banco de dados:**
    ```bash
    npx prisma generate
    npx prisma migrate dev --name init
    ```

6. **Rode o servidor de desenvolvimento:** 
    ```bash
    npm run dev
    ```

7. A API ficará disponível em `http://localhost:3000/api-docs` (documentação Swagger ou acesse dev-docs/routes)

---

## Resumo prático:

* Primeiro suba o backend (porta 3000 por padrão).
* Depois rode o frontend e aponte o `env` para o backend (`VITE_API_URL`).
* Acesse no navegador: `http://localhost:5173/`.