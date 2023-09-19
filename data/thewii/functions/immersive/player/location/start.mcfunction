scoreboard players add $checked_players twis.data 1
execute if score $check_toggle twis.data matches 0 run tag @s add twis.checked
execute if score $check_toggle twis.data matches 1 run tag @s remove twis.checked
scoreboard players set @s twis.outside 0
execute if predicate thewii:immersive/is_outside run scoreboard players set @s twis.outside 1
execute if score @s twis.outside matches 0 positioned ~2 ~ ~ if predicate thewii:immersive/is_outside run scoreboard players set @s twis.outside 1
execute if score @s twis.outside matches 0 positioned ~-2 ~ ~ if predicate thewii:immersive/is_outside run scoreboard players set @s twis.outside 1
execute if score @s twis.outside matches 0 positioned ~ ~ ~2 if predicate thewii:immersive/is_outside run scoreboard players set @s twis.outside 1
execute if score @s twis.outside matches 0 positioned ~ ~ ~-2 if predicate thewii:immersive/is_outside run scoreboard players set @s twis.outside 1
execute unless predicate thewii:immersive/height/on_surface run scoreboard players set @a twis.outside 0
execute unless score @s twis.backgr matches 1 run scoreboard players set @s twis.preloc 1
execute if predicate thewii:immersive/biome/on_desert run scoreboard players set @s twis.preloc 2
execute if predicate thewii:immersive/biome/on_beach run scoreboard players set @s twis.preloc 3
execute if predicate thewii:immersive/biome/on_ocean run scoreboard players set @s twis.preloc 4
execute if predicate thewii:immersive/biome/on_swamp run scoreboard players set @s twis.preloc 5
execute if predicate thewii:immersive/height/high_heights run scoreboard players set @s twis.preloc 100
execute if score #weather twis.data matches 1.. if predicate thewii:immersive/biome/on_cold_biomes run scoreboard players set @s twis.preloc 10
execute if score #weather twis.data matches 1.. if predicate thewii:immersive/biome/on_mountains unless entity @s[y=0, dy=90] run scoreboard players set @s twis.preloc 10
execute if score #weather twis.data matches 1.. if predicate thewii:immersive/biome/on_taiga unless entity @s[y=0, dy=130] run scoreboard players set @s twis.preloc 10
execute if score #weather twis.data matches 1.. unless score @s twis.loc matches 2..4 unless score @s twis.loc matches 10 unless score @s twis.loc matches 100 run scoreboard players set @s twis.outside 0
scoreboard players set @s twis.backgr 0
execute store success score #river_height twis.temp if predicate thewii:immersive/height/river_height
execute if score @s twis.backgr matches 0 if score #river_height twis.temp matches 1 if predicate thewii:immersive/biome/on_river run scoreboard players set @s twis.backgr 1
execute if score @s twis.backgr matches 0 if score #river_height twis.temp matches 1 positioned ~5 ~ ~ if predicate thewii:immersive/biome/on_river run scoreboard players set @s twis.backgr 1
execute if score @s twis.backgr matches 0 if score #river_height twis.temp matches 1 positioned ~-5 ~ ~ if predicate thewii:immersive/biome/on_river run scoreboard players set @s twis.backgr 1
execute if score @s twis.backgr matches 0 if score #river_height twis.temp matches 1 positioned ~ ~ ~5 if predicate thewii:immersive/biome/on_river run scoreboard players set @s twis.backgr 1
execute if score @s twis.backgr matches 0 if score #river_height twis.temp matches 1 positioned ~ ~ ~-5 if predicate thewii:immersive/biome/on_river run scoreboard players set @s twis.backgr 1
scoreboard players set @s twis.dim 0
execute if predicate thewii:immersive/dimension/in_nether run scoreboard players set @s twis.dim -1
execute if predicate thewii:immersive/dimension/in_end run scoreboard players set @s twis.dim 1
execute if predicate thewii:immersive/biome/on_caves run function thewii:immersive/player/location/cave
execute if predicate thewii:immersive/structure/on_mineshaft run scoreboard players set @s twis.preloc 105
execute if score @s twis.dim matches -1 run scoreboard players set @s twis.preloc 201
execute if score @s twis.dim matches 1 run scoreboard players set @s twis.preloc 202
execute unless score @s twis.preloc = @s twis.loc run scoreboard players add @s twis.pretrans 1
execute if score @s twis.preloc matches 1..100 if predicate thewii:immersive/height/on_surface if score @s twis.pretrans matches 2.. run scoreboard players operation @s twis.loc = @s twis.preloc
execute if score @s twis.preloc matches 1..100 unless predicate thewii:immersive/height/on_surface if score @s twis.pretrans matches 6.. run scoreboard players operation @s twis.loc = @s twis.preloc
execute if score @s twis.preloc matches 101..199 if score @s twis.pretrans matches 3.. run scoreboard players operation @s twis.loc = @s twis.preloc
execute if score @s twis.preloc matches 200.. if score @s twis.pretrans matches 1.. run scoreboard players operation @s twis.loc = @s twis.preloc
execute if score @s twis.preloc = @s twis.loc run scoreboard players reset @s twis.pretrans
