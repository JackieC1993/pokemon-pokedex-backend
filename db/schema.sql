DROP DATABASE IF EXISTS pokemon_app;
CREATE DATABASE pokemon_app;

\c pokemon_app;

CREATE TABLE pokemons (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  type1 VARCHAR(20) NOT NULL,
  type2 VARCHAR(20),
  hp INTEGER NOT NULL,
  attack INTEGER NOT NULL,
  defense INTEGER NOT NULL,
  special_attack INTEGER NOT NULL,
  special_defense INTEGER NOT NULL,
  speed INTEGER NOT NULL
);

CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INTEGER NOT NULL,
  hometown VARCHAR(50) NOT NULL
);

CREATE TABLE teams (
  id SERIAL PRIMARY KEY,
  trainer_id INTEGER NOT NULL,
  pokemon_id INTEGER NOT NULL,
  FOREIGN KEY (trainer_id) REFERENCES trainers(id),
  FOREIGN KEY (pokemon_id) REFERENCES pokemons(id)
);

CREATE TABLE moves (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  type VARCHAR(20) NOT NULL,
  power INTEGER NOT NULL,
  accuracy FLOAT NOT NULL,
  pp INTEGER NOT NULL
);

CREATE TABLE pokemon_moves (
  id SERIAL PRIMARY KEY,
  pokemon_id INTEGER NOT NULL,
  move_id INTEGER NOT NULL,
  FOREIGN KEY (pokemon_id) REFERENCES pokemons(id),
  FOREIGN KEY (move_id) REFERENCES moves(id)
);

CREATE TABLE regions (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description TEXT NOT NULL
);

CREATE TABLE locations (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  region_id INTEGER NOT NULL,
  FOREIGN KEY (region_id) REFERENCES regions(id)
);

CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description TEXT NOT NULL,
  category VARCHAR(20) NOT NULL
);

CREATE TABLE player_items (
  id SERIAL PRIMARY KEY,
  player_id INTEGER NOT NULL,
  item_id INTEGER NOT NULL,
  quantity INTEGER NOT NULL,
  FOREIGN KEY (player_id) REFERENCES trainers(id),
  FOREIGN KEY (item_id) REFERENCES items(id)
);

CREATE TABLE battles (
  id SERIAL PRIMARY KEY,
  trainer1_id INTEGER NOT NULL,
  trainer2_id INTEGER NOT NULL,
  winner_id INTEGER NOT NULL,
  location_id INTEGER NOT NULL,
  FOREIGN KEY (trainer1_id) REFERENCES trainers(id),
  FOREIGN KEY (trainer2_id) REFERENCES trainers(id),
  FOREIGN KEY (winner_id) REFERENCES trainers(id),
  FOREIGN KEY (location_id) REFERENCES locations(id)
);
