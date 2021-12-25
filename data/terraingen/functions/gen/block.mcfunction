#worldsize
execute store result score @s perlinx run data get entity @s Pos[0] 1
execute store result score @s perliny run data get entity @s Pos[2] 1

execute if score worldsizey seed <= @s perliny run kill @s
execute if score worldsizex seed <= @s perlinx run tp @s 0 ~ ~1

execute store result score @s perlinx run data get entity @s Pos[0] 200
execute store result score @s perliny run data get entity @s Pos[2] 200
#offsets
scoreboard players operation @s perlinx += seedx seed
scoreboard players operation @s perlinx += seedx seed

#generate noise
function #terraingen:noise

summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["PlaceBlock"]} 
execute store result entity @e[tag=PlaceBlock,limit=1] Pos[1] double 0.002 run scoreboard players get @s perlinOutput


execute at @e[tag=PlaceBlock] run fill ~ 255 ~ ~ ~1 ~ air
execute at @e[tag=PlaceBlock] run fill ~ 0 ~ ~ 0 ~ bedrock
execute at @e[tag=PlaceBlock] run fill ~ 1 ~ ~ ~ ~ stone
execute at @e[tag=PlaceBlock] run fill ~ ~-1 ~ ~ ~-2 ~ dirt
execute at @e[tag=PlaceBlock] run fill ~ ~ ~ ~ ~ ~ grass_block

kill @e[tag=PlaceBlock]

tp @s ~1 ~ ~