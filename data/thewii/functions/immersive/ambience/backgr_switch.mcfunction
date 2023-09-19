execute if score @s twis.trans matches 11 if score @s twis.backgr matches 1 at @s run playsound thewii:immersive.ambient.surface.river.loop ambient @s ~ ~ ~ 0.3 1
execute if score @s twis.trans matches 11 if score @s twis.backgrsw matches 1 at @s run playsound thewii:immersive.ambient.surface.river.fadeout ambient @s ~ ~ ~ 0.3 1
execute if score @s twis.trans matches 12 if score @s twis.backgrsw matches 1 at @s run stopsound @s ambient thewii:immersive.ambient.surface.river.loop
execute if score @s twis.trans matches 12 run scoreboard players operation @s twis.backgrsw = @s twis.backgr
scoreboard players add @s twis.trans 1
execute if score @s twis.trans matches 13.. run scoreboard players reset @s twis.trans
