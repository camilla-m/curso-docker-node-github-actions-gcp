---
marp: true
theme: uncover
class: invert
---
# Aula 3: Cloud Run ☁️
## Deploy em Produção
---
### Por que Cloud Run?
- Serverless: Pague apenas pelo que usar.
- Escala de zero a infinito.
- HTTPS automático.
---
### O Fluxo Final
1. Push para o GitHub
2. Action faz o build da imagem
3. Action faz o push para o Artifact Registry
4. Action atualiza o serviço no Cloud Run