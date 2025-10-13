# Checklist de Deploy

Use esta checklist para todos os deploys importantes.

Pré-deploy
- [ ] Código revisado e PR aprovado
- [ ] Testes Unitários Automatizados na branch Dev
- [ ] Aprovação do Reviewer
- [ ] Testes de Integração Automatizados na branch Test
- [ ] Aprovação do Reviewer
- [ ] Passar para a branch main
- [ ] Notificar time (canal Github/Discord/Jira/Whatsapp)

Passos de deploy
1. Executar pipeline de deploy automático
2. Monitorar logs e erros durante o deploy
3. Corrigir anomálias encontradas

Pós-deploy
- [ ] Validar funcionalidades críticas manualmente
- [ ] Atualizar changelog e documentação (se necessário)
- [ ] Atualizar status da task no Jira

Rollback
- Negar PR's em caso de funcionalidades problematicas
- Notificar desenvolvedor responsável
- Solicitar revisão e correções
- Enviar novamente para análise

Comunicação
- Como comunicar ao time em caso de problemas.
