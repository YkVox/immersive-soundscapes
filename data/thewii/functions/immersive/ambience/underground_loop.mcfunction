scoreboard players add @s twis.loop 1
execute if score @s twis.loop matches 81.. run scoreboard players set @s twis.loop 1
execute if score @s twis.loop matches 1 run function thewii:immersive/ambience/sounds/loop
execute if score @s twis.loop matches 15 if predicate thewii:immersive/addition_chance run function thewii:immersive/ambience/sounds/addition
