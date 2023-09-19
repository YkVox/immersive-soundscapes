scoreboard players set #cave_depth twis.temp 0
execute if entity @s[y=63, dy=449] run scoreboard players set #cave_depth twis.temp 101
execute if score #cave_depth twis.temp matches 0 if entity @s[y=33, dy=29] run scoreboard players set #cave_depth twis.temp 102
execute if score #cave_depth twis.temp matches 0 if entity @s[y=0, dy=32] run scoreboard players set #cave_depth twis.temp 103
execute if score #cave_depth twis.temp matches 0 if entity @s[y=-128, dy=127] run scoreboard players set #cave_depth twis.temp 104
execute if score #cave_depth twis.temp matches 1.. run scoreboard players operation @s twis.preloc = #cave_depth twis.temp
