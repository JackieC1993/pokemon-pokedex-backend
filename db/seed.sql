\c pokemon_app;

-- Seed data for pokemons table
INSERT INTO pokemons (name, type1, type2, hp, attack, defense, special_attack, special_defense, speed)
VALUES
  ('Bulbasaur', 'Grass', 'Poison', 45, 49, 49, 65, 65, 45),
  ('Charmander', 'Fire', NULL, 39, 52, 43, 60, 50, 65),
  ('Squirtle', 'Water', NULL, 44, 48, 65, 50, 64, 43),
  ('Pikachu', 'Electric', NULL, 35, 55, 40, 50, 50, 90),
  ('Gengar', 'Ghost', 'Poison', 60, 65, 60, 130, 75, 110),
  ('Mewtwo', 'Psychic', NULL, 106, 110, 90, 154, 90, 130);

-- Seed data for trainers table
INSERT INTO trainers (name, age, hometown)
VALUES
  ('Ash Ketchum', 10, 'Pallet Town'),
  ('Misty', 12, 'Cerulean City'),
  ('Brock', 15, 'Pewter City'),
  ('Gary Oak', 10, 'Pallet Town'),
  ('May', 10, 'Petalburg City'),
  ('Dawn', 10, 'Twinleaf Town');

-- Seed data for teams table
INSERT INTO teams (trainer_id, pokemon_id)
VALUES
  (1, 1), (1, 2), (1, 4),
  (2, 3), (2, 5),
  (3, 2), (3, 6),
  (4, 1), (4, 2), (4, 3),
  (5, 1), (5, 4), (5, 5),
  (6, 1), (6, 3), (6, 4);

-- Seed data for moves table
INSERT INTO moves (name, type, power, accuracy, pp)
VALUES
  ('Tackle', 'Normal', 40, 1.0, 35),
  ('Ember', 'Fire', 40, 1.0, 25),
  ('Bubble', 'Water', 40, 1.0, 30),
  ('Thunderbolt', 'Electric', 90, 1.0, 15),
  ('Shadow Ball', 'Ghost', 80, 1.0, 15),
  ('Psychic', 'Psychic', 90, 1.0, 10);

-- Seed data for pokemon_moves table
INSERT INTO pokemon_moves (pokemon_id, move_id)
VALUES
  (1, 1), (1, 2),
  (2, 1), (2, 2),
  (3, 1), (3, 3),
  (4, 1), (4, 4),
  (5, 1), (5, 5),
  (6, 1), (6, 6);

-- Seed data for regions table
INSERT INTO regions (name, description)
VALUES
  ('Kanto', 'The Kanto region is the main setting of the original Pokémon games and anime.'),
  ('Hoenn', 'The Hoenn region is the main setting of the Pokémon Ruby, Sapphire, and Emerald games.'),
  ('Sinnoh', 'The Sinnoh region is the main setting of the Pokémon Diamond, Pearl, and Platinum games.');

-- Seed data for locations table
INSERT INTO locations (name, region_id)
VALUES
  ('Pallet Town', 1),
  ('Cerulean City', 1),
  ('Pewter City', 1),
  ('Petalburg City', 2),
  ('Twinleaf Town', 3);

-- Seed data for items table
INSERT INTO items (name, description, category)
VALUES
  ('Potion', 'Restores 20 HP to a Pokémon.', 'Consumable'),
  ('Antidote', 'Cures a Pokémon of the Poison status condition.', 'Consumable'),
  ('Poke Ball', 'The standard Pokémon catching device.', 'Pokémon'),
  ('Rare Candy', 'Instantly raises a Pokémon level by one.', 'Consumable'),
  ('Escape Rope', 'Allows the user to instantly escape from a dungeon or cave.', 'Utility');
