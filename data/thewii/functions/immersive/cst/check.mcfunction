scoreboard players set @s twis.cst_id 0
execute if score @s twis.cfg_cst matches 3..4 run function thewii:immersive/cst/custom_soundtrack
execute if score @s twis.cfg_cst matches 2 run function thewii:immersive/cst/vanilla_soundtrack
execute if score @s twis.cfg_cst matches 3 if predicate thewii:immersive/cst/play_vanilla_chance run function thewii:immersive/cst/vanilla_soundtrack
execute if score @s twis.cfg_cst matches 2..3 if predicate thewii:immersive/dimension/in_end if entity @e[type=minecraft:ender_dragon] run scoreboard players set @s twis.cst_id 11
execute if score @s twis.cst_id matches 1.. run function thewii:immersive/cst/play
