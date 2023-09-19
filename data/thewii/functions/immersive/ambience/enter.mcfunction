scoreboard players operation #location twis.loop = @s twis.loc
execute if score @s twis.enter matches 1 run function thewii:immersive/ambience/sounds/fadeout
execute if score @s twis.enter matches 1 run scoreboard players set @s twis.loop 0
execute if score @s twis.enter matches 2 run function thewii:immersive/ambience/sounds/stopsound
scoreboard players add @s twis.enter 1
execute if score @s twis.enter matches 3.. run scoreboard players reset @s twis.enter
