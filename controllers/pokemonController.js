// routes/pokemon.js
const express = require('express');
const pokemon = express.Router();
const pokemonData = require('../data/pokemonData');

// GET /pokemon
pokemon.get('/', (req, res) => {
  try {
    if (typeof pokemonData === 'object' && pokemonData !== null) {
      const pokemonArray = Object.values(pokemonData);
      res.json(pokemonArray);
    } else {
      res.status(500).json({ message: 'Error fetching Pokemon data', error: 'pokemonData is not an object' });
    }
  } catch (error) {
    res.status(500).json({ message: 'Error fetching Pokemon data', error: error.message });
  }
});

// GET /pokemon/:id
pokemon.get('/:id', (req, res) => {
  try {
    if (typeof pokemonData === 'object' && pokemonData !== null) {
      const pokemon = Object.values(pokemonData).find(p => p.id === parseInt(req.params.id));
      if (!pokemon) {
        return res.status(404).json({ message: 'Pokemon not found' });
      }
      res.json(pokemon);
    } else {
      res.status(500).json({ message: 'Error fetching Pokemon', error: 'pokemonData is not an object' });
    }
  } catch (error) {
    res.status(500).json({ message: 'Error fetching Pokemon', error: error.message });
  }
});

// POST /pokemon
pokemon.post('/', (req, res) => {
  try {
    if (typeof pokemonData === 'object' && pokemonData !== null) {
      const newPokemon = req.body;
      newPokemon.id = Object.keys(pokemonData).length + 1;
      pokemonData[newPokemon.id] = newPokemon;
      res.status(201).json(newPokemon);
    } else {
      res.status(500).json({ message: 'Error creating Pokemon', error: 'pokemonData is not an object' });
    }
  } catch (error) {
    res.status(500).json({ message: 'Error creating Pokemon', error: error.message });
  }
});

// PUT /pokemon/:id
pokemon.put('/:id', (req, res) => {
  try {
    if (typeof pokemonData === 'object' && pokemonData !== null) {
      const pokemonId = parseInt(req.params.id);
      if (!pokemonData[pokemonId]) {
        return res.status(404).json({ message: 'Pokemon not found' });
      }
      pokemonData[pokemonId] = { ...pokemonData[pokemonId], ...req.body };
      res.json(pokemonData[pokemonId]);
    } else {
      res.status(500).json({ message: 'Error updating Pokemon', error: 'pokemonData is not an object' });
    }
  } catch (error) {
    res.status(500).json({ message: 'Error updating Pokemon', error: error.message });
  }
});

// DELETE /pokemon/:id
pokemon.delete('/:id', (req, res) => {
  try {
    if (typeof pokemonData === 'object' && pokemonData !== null) {
      const pokemonId = parseInt(req.params.id);
      if (!pokemonData[pokemonId]) {
        return res.status(404).json({ message: 'Pokemon not found' });
      }
      const deletedPokemon = pokemonData[pokemonId];
      delete pokemonData[pokemonId];
      res.json(deletedPokemon);
    } else {
      res.status(500).json({ message: 'Error deleting Pokemon', error: 'pokemonData is not an object' });
    }
  } catch (error) {
    res.status(500).json({ message: 'Error deleting Pokemon', error: error.message });
  }
});

module.exports = pokemon;