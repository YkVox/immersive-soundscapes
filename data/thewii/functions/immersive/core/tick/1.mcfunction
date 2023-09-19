execute store result score $daytime twis.data run time query daytime
scoreboard players set $time twis.data 0
execute if score $daytime twis.data matches 12000..23999 run scoreboard players set $time twis.data 1
execute if score $daytime twis.data matches 12500..23500 run scoreboard players set $time twis.data 2
execute if score $daytime twis.data matches 13000..22999 run scoreboard players set $time twis.data 3
execute as @a[scores={twis.joined=-2146473648..}] run function thewii:immersive/player/joined
execute as @a[scores={twis.jump=-2146473648..}] run function thewii:immersive/player/jump
