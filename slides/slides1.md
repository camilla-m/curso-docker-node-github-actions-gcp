---
marp: true
theme: uncover
class: invert
---
# Aula 1: Docker 🐳
## Criando sua primeira imagem local
---
### O que vamos fazer?
- Criar um servidor Node.js simples
- Escrever o Dockerfile
- Build: `docker build -t app-local .`
- Run: `docker run -p 8080:8080 app-local`
---
### Por que Docker?
- "Na minha máquina funciona" acabou.
- Isolamento total de dependências.