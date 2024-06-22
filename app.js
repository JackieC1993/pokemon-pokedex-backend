// app.js
const express = require('express');
const app = express();
const pokemonController = require('./controllers/pokemonController');

app.use(express.json());
app.use('/pokemon', pokemonController);

app.listen(3000, () => {
  console.log('Server is running on port 3000');
});