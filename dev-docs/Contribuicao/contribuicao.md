# Contribuindo

Obrigado por desejar contribuir com a Skytrack!

# Desenvolvimento
Nosso processo deve correr de maneira flúida, porém concreta, por isso seguimos diferentes padrões e etapas de desenvolvimente até a entrega do produto final.

Processo

Nome dos repositórios de desenvolvimento:
Frontend:
-skytrack-front

Backend:
-skytrack-back

- Com as tasks definidas, cada desenvolvedor deve ter autonômia para pegar e desenvolver cada uma.
- Aplicar a atibuição da task ao desenvolvedor responsável no Jira.
- Iniciar processo de desenvolvimento e estudo dos requisitos
- Notificar Master e Dev Team sobre o andamento e qualidade da task
- Em caso de dúvidas de entendimento, objetivo ou entregavél válido, busque orientação com o PO e documentação específica(Backlog).
- Atualize o seu repositório para a versão mais rescente do produto.
- Crie uma branch task, seguindo os padrões definidos na documentação.
- Faça o commit de atualizações, seguindo os padrões definidos pela documentação (Prefira uma descrição objetiva em português)


# Documentação
A documentação é viva e deve ser tratada como código: pequenas atualizações frequentes são preferíveis a grandes mudanças esporádicas.

Processo
- Abra um PR para qualquer alteração na pasta `docs/` ou `dev-docs`.
- Inclua na descrição do PR um resumo curto das mudanças e, quando aplicável, links para issues ou commits relacionados.
- Mantenha o texto claro e objetivo. (Seja objetivo e utilize Português).

# Branch
As branchs são definidas com o seguinte fluxo:

Fluxo de branch:
- Branch task --> dev (teste unitários) --> test (testes de integração) --> main(versão testada e implementada)
- Dessa maneira podemos seguir alinhados com nossos processos, sempre validando as entregas antes de integra-las á próxima etapa.

Nomenclatura da branch task:
- SS-[Número da task]+[Nome da Task] Ex: SS-40-Página-de-Cadastro
- Separe o nome da task utilizando um traço (-).

Padrões de Commit: 

- FEAT: Adiciona um novo recurso ou funcionalidade.
Ex: "feat: adição da navbar" 

- FIX: Corrige um bug.
Ex: "fix: correção de modal que não estava fechando" 

- CHORE: Atualizações de manutenção que não alteram a lógica de negócio ou visual.
Ex: "chore: atualização das dependências do Node.js" 

- DOCS: Altera a documentação, como o README, comentários no código ou arquivos de documentação do projeto.
Ex: "docs: atualização README com informações sobre novas rotas" 

- STYLE: Modifica a formatação do código, como espaços em branco, quebra de linha ou pontuação, sem alterar a lógica.
Ex: "style: adiciona comentários no código para facilitar a leitura" 

- REFACTOR: Refatora o código sem adicionar novas funcionalidades ou corrigir bugs, visando melhorar a estrutura, legibilidade ou desempenho.
Ex: "refactor: refatora o código, deixando-o mais leve" 

- TEST: Adiciona, modifica ou remove testes unitários ou de integração.
Ex: "test: adiciona teste para o componente de login" 

- PERF: Melhora a performance.
Ex: "perf: otimiza a execução de consultas no banco de dados" 

- BUILD: Altera o sistema de build ou as dependências externas, como npm, gradle, ou docker.
Ex: "build: adiciona um Dockerfile para o ambiente de produção" 

- REVERT: Reverte um commit anterior.
Ex: "revert: reverte a adição de autenticação de middleware" 

- HOTFIX: Corrige um bug crítico em produção de forma urgente.
Ex: "hotfix: corrige vulnerabilidade crítica na autenticação de usuários"

# Padrões
- Use português claro e termos técnicos consistentes.
- Prefira trechos de comando e exemplos (curl, scripts, snippets).
- Seja objetivo.

# Contato
- Para dúvidas sobre o formato da documentação, abra uma issue, contacte o Product Owner ou o responsável pela documentação.
