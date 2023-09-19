execute store result score @s twis.health run data get entity @s Health
execute if score @s twis.health matches ..14 unless score @s twis.heart_loop matches 1.. run scoreboard players set @s twis.heart_loop 1
execute if score @s twis.health matches 15.. if score @s twis.heart_loop matches 1.. run scoreboard players reset @s twis.heart_loop
