// server.js
const express = require('express');
const app = express();
const pokemonController = require('./controllers/pokemonController');

// Middleware
app.use(express.json());

// Routes
app.use('/pokemon', pokemonController);

// Error handling
app.use((req, res) => {
  console.error(err.stack);
  res.status(500).json({ message: 'Internal Server Error' });
});

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});