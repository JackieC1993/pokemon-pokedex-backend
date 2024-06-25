\c pokemon_app;

-- Seed data for pokemons table
INSERT INTO pokemons (name, type1, type2, hp, attack, defense, special_attack, special_defense, speed)
VALUES
  ('Bulbasaur', 'Grass', 'Poison', 45, 49, 49, 65, 65, 45),
  ('Charmander', 'Fire', NULL, 39, 52, 43, 60, 50, 65),
  ('Squirtle', 'Water', NULL, 44, 48, 65, 50, 64, 43),
  ('Pikachu', 'Electric', NULL, 35, 55, 40, 50, 50, 90),
  ('Gengar', 'Ghost', 'Poison', 60, 65, 60, 130, 75, 110),
  ('Mewtwo', 'Psychic', NULL, 106, 110, 90, 154, 90, 130),
  ('Mew', 'Psychic', NULL, 100, 100, 100, 90, 80, 60),
  ('Charizard', 'Fire', 'Flying', 78, 84, 78, 90, 100,110),
  ('Blastoise', 'Water', NULL, 79, 83, 100, 120, 100, 120),
  ('Venusaur', 'Grass', 'Poison', 80, 82, 95, 100, 120, 110),
  ('Pidgeot', 'Flying', 'Normal', 83, 80, 75, 90, 100, 95),
  ('Arcanine', 'Fire', NULL, 90, 110, 80, 75, 96, 90),
  ('Gyarados', 'Water', 'Flying', 95, 125, 79, 85,90,100),
  ('Machamp', 'Fighting', NULL, 90, 130, 80 , 75, 80, 90),
  ('Golem', 'Rock', 'Ground', 80, 120, 130,90,85,60),
  ('Nidoking', 'Ground', 'Poison', 81, 102,90,78,58,85),
  ('Nidoqueen', 'Ground', 'Poison', 90, 82,90, 78,90,100),
  ('Rapidash', 'Fire', NULL, 65, 100, 70,90,95,100),
  ('Exeggutor', 'Grass', 'Psychic', 95, 95,100,95,85,100),
  ('Vaporeon', 'Water', NULL, 130, 65, 60,90,85,100),
  ('Jolteon', 'Electric', NULL, 65, 65, 60,80,85,90);


-- Seed data for trainers table
INSERT INTO trainers (name, age, hometown)
VALUES
  ('Ash Ketchum', 10, 'Pallet Town'),
  ('Misty', 12, 'Cerulean City'),
  ('Brock', 15, 'Pewter City'),
  ('Gary Oak', 10, 'Pallet Town'),
  ('May', 10, 'Petalburg City'),
  ('Dawn', 10, 'Twinleaf Town'),
  ('Bianca', 10, 'Nuvema Town'),
  ('Cilan', 10, 'Striaton City'),
  ('Serena', 10, 'Vaniville Town'),
  ('Clemont', 10, 'Lumiose City'),
  ('Lana', 10, 'Laverre City'),
  ('Kiawe', 10, 'Akala Island'),
  ('Lillie', 10, 'Alola'),
  ('Sophocles', 10, 'Akala Island'),
  ('Mallow', 10, 'Akala Island'),
  ('Gladion', 10, 'Alola'),
  ('Hau', 10, 'Poni Island'),
  ('Ilima', 10, 'Hauoli City');

-- Seed data for teams table
INSERT INTO teams (trainer_id, pokemon_id)
VALUES
  (1, 1), (1, 2), (1, 4),
  (2, 3), (2, 5),
  (3, 2), (3, 6),
  (4, 1), (4, 2), (4, 3),
  (5, 1), (5, 4), (5, 5),
  (6, 1), (6, 3), (6, 4),
  (7, 1), (7, 2), (7, 3),
  (8, 1), (8, 2), (8, 3),
  (9, 1), (9, 2), (9, 3),
  (10, 1), (10, 2), (10, 3),
  (11, 1), (11, 2), (11, 3),
  (12, 1), (12, 2), (12, 3),
  (13, 1), (13, 2), (13, 3),
  (14, 1), (14, 2), (14, 3),
  (15, 1), (15, 2), (15, 3);

-- Seed data for moves table
INSERT INTO moves (name, type, power, accuracy, pp)
VALUES
  ('Tackle', 'Normal', 40, 1.0, 35),
  ('Ember', 'Fire', 40, 1.0, 25),
  ('Bubble', 'Water', 40, 1.0, 30),
  ('Thunderbolt', 'Electric', 90, 1.0, 15),
  ('Shadow Ball', 'Ghost', 80, 1.0, 15),
  ('Psychic', 'Psychic', 90, 1.0, 10),
  ('Earthquake', 'Ground', 100, 1.0, 10),
  ('Solar Beam', 'Grass', 120, 1.0, 10),
  ('Hyper Beam', 'Normal', 150, 1.0, 5),
  ('Giga Impact', 'Normal', 150, 1.0, 5),
  ('Flamethrower', 'Fire', 90, 1.0, 10),
  ('Ice Beam', 'Ice', 90, 1.0,10),
  ('Thunder', 'Electric', 110, 1.0,10),
  ('Blizzard', 'Ice', 110, 1.0,10),
  ('Surf', 'Water', 90, 1.0, 15),
  ('Waterfall', 'Water', 80, 1.0,15),
  ('Aqua Jet', 'Water', 40, 1.0, 15),
  ('Drill Run', 'Ground', 80, 1.0,15),
  ('Rock Slide', 'Rock', 75, 1.0,15),
  ('Stone Edge', 'Rock', 100, 1.0,15);


-- Seed data for pokemon_moves table
INSERT INTO pokemon_moves (pokemon_id, move_id)
VALUES
  (1, 1), (1, 2),
  (2, 1), (2, 2),
  (3, 1), (3, 3),
  (4, 1), (4, 4),
  (5, 1), (5, 5),
  (6, 1), (6, 6),   
  (7, 1), (7, 7),
  (8, 1), (8, 8),
  (9, 1), (9, 9),
  (10, 1), (10, 10),
  (11, 1), (11, 11),
  (12, 1), (12, 12),
  (13, 1), (13, 13),
  (14, 1), (14, 14),
  (15, 1), (15, 15),
  (16, 1), (16, 16),
  (17, 1), (17, 17),
  (18, 1), (18, 18),
  (19, 1), (19, 19),
  (20, 1), (20, 20);

INSERT INTO regions (name, description)
VALUES
  ('Kanto', 'The Kanto region is the main setting of the original Pokémon games and anime.'),
  ('Hoenn', 'The Hoenn region is the main setting of the Pokémon Ruby, Sapphire, and Emerald games'),
  ('Sinnoh', 'The Sinnoh region is the main setting of the Pokémon Diamond, Pearl, and Platinum games.'),
  ('Unova', 'The Unova region is the main setting of the Pokémon Black and White.'),
  ('Kalos', 'The Kalos region is the main setting of the Pokémon X and Y.'),
  ('Alola', 'The Alola region is the main setting of the Pokémon Sun and Moon'),
  ('Galar', 'The Galar region is the main setting of the Pokémon Sword and Shield.'),
  ('Hisui', 'The Hisui region is the main setting of the Pokémon Legends: Arceous.'),
  ('Paldea', 'The Paldea region is the main setting of the Pokémon Scarlet and Violet.');
-- Seed data for locations table
INSERT INTO locations (name, region_id)
VALUES
  ('Pallet Town', 1),
  ('Cerulean City', 1),
  ('Pewter City', 1),
  ('Petalburg City', 2),
  ('Twinleaf Town', 3),
  ('Lilycove City', 3),
  ('Olivine City', 3),
  ('Lavender Town', 4),
  ('Goldenrod City', 4),
  ('Blackthorn City', 4),
  ('Littleroot Town', 5),
  ('Oreburgh City', 5),
  ('Floaroma Town', 5),
  ('Striaton City', 6),
  ('Castelia City', 6),
  ('Nimbasa City', 6),
  ('Lentimas Town', 7),
  ('Laverre City', 7),
  ('Snowbelle City', 7);


-- Seed data for items table
INSERT INTO items (name, description, category)
VALUES
  ('Potion', 'Restores 20 HP to a Pokémon.', 'Consumable'),
  ('Antidote', 'Cures a Pokémon of the Poison status condition.', 'Consumable'),
  ('Poke Ball', 'The standard Pokémon catching device.', 'Pokémon'),
  ('Rare Candy', 'Instantly raises a Pokémon level by one.', 'Consumable'),
  ('Escape Rope', 'Allows the user to instantly escape from a dungeon or cave.', 'Utility'),
  ('Super Potion', 'Restores 50 HP to a Pokémon.', 'Consumable'),
  ('Full Restore', 'Restores all HP and PP to a Pokémon.', 'Consumable'),
  ('Max Potion', 'Restores all HP to a Pokémon.', 'Consumable'),
  ('Max Revive', 'Revives a fainted Pokémon.', 'Consumable'),
  ('Hyper Potion', 'Restores 200 HP to a Pokémon.', 'Consumable'),
  ('Elixir', 'Restores all PP to a Pokémon.', 'Consumable'),
  ('Max Elixir', 'Restores all PP to a Pokémon.', 'Consumable'),
  ('Full Heal', 'Cures all status conditions from a Pokémon.', 'Consumable'),
  ('Lava Cookie', 'Restores 50 HP to a Pokémon.', 'Consumable'),
  ('Revive', 'Revives a fainted Pokémon.', 'Consumable'),
  ('Max Revive', 'Revives a fainted Pokémon.', 'Consumable'),
  ('Full Restore', 'Restores all HP and PP to a Pokémon.', 'Consumable');
