schedule clear thewii:immersive/core/tick/5
schedule clear thewii:immersive/core/tick/20
scoreboard players set #load thewii.load 1
scoreboard players set $1.15 thewii.load 0
function thewii:immersive/core/check_1.15
execute unless score $1.15 thewii.load matches 1 run scoreboard players set #load thewii.load 0
execute if score #load thewii.load matches 1 run function thewii:immersive/core/load2
execute if score #load thewii.load matches 0 run tellraw @a [{"text": "[Debug]: ", "color": "red", "bold": true}, {"text": "Immersive Soundscapes failed to load. It requires Minecraft 1.15 or above.", "color": "white", "bold": false}]
