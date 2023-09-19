summon minecraft:area_effect_cloud ~ ~ ~ {UUID: [I; 43, 0, 0, 1], Duration: 1, Tags: ["twis.uuid"]}
execute if score $1.16 twis.data matches 1 store result score #lcg twis.math run data get entity 0000002b-0000-0000-0000-000000000001 UUID[0]
execute if score $1.16 twis.data matches 0 store result score #lcg twis.math run data get entity 0000002b-0000-0000-0000-000000000001 UUIDMost 0.00000000023283064365
kill 0000002b-0000-0000-0000-000000000001
execute if score #lcg twis.math matches ..-1 run scoreboard players operation #lcg twis.math *= #-1 twis.math
