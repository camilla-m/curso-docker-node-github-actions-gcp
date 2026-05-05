# Estágio de build/run leve
FROM node:18-slim

# Definir diretório de trabalho
WORKDIR /usr/src/app

# Copiar apenas os arquivos de dependências
COPY package*.json ./

# Instalar dependências de produção
RUN npm install --only=production

# Copiar o restante do código
COPY . .

# Expõe a porta padrão do Cloud Run
EXPOSE 8080

# Comando para iniciar
CMD [ "node", "app.js" ]