const express = require('express');
const app = express();
const port = process.env.PORT || 8080;

app.get('/', (req, res) => {
  res.send('🚀 Deploy realizado com sucesso no Google Cloud Run! - PunkDoDevops');
});

app.listen(port, () => {
  console.log(`App ouvindo na porta ${port}`);
});