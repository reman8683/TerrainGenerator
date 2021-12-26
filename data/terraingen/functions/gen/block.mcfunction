execute store result score @s perlinx run data get entity @s Pos[0] 200
execute store result score @s perliny run data get entity @s Pos[2] 200
#offsets
scoreboard players operation @s perlinx += seedx seed
scoreboard players operation @s perliny += seedy seed

#generate noise
function #terraingen:noise

summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["PlaceBlock"]} 
summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["PlaceBlockBedrock"]} 
execute store result entity @e[tag=PlaceBlock,limit=1] Pos[1] double 0.002 run scoreboard players get @s perlinOutput
execute store result entity @e[tag=PlaceBlockBedrock,limit=1] Pos[1] double 0.001 run scoreboard players get @s perlinOutput


execute at @e[tag=PlaceBlock] run fill ~ 255 ~ ~ ~1 ~ air
execute at @e[tag=PlaceBlockBedrock] run fill ~ 0 ~ ~ ~ ~ bedrock
execute at @e[tag=PlaceBlock] run fill ~ 1 ~ ~ ~ ~ stone replace air
execute at @e[tag=PlaceBlock] run fill ~ ~-1 ~ ~ ~-2 ~ dirt replace stone
execute at @e[tag=PlaceBlock] run fill ~ ~ ~ ~ ~ ~ grass_block

kill @e[tag=PlaceBlock]
kill @e[tag=PlaceBlockBedrock]

#worldsize
execute store result score @s perlinx run data get entity @s Pos[0] 1
execute store result score @s perliny run data get entity @s Pos[2] 1
execute if score @s perlinx >= worldsizex seed run tp @s 0 ~ ~1
execute if score @s perliny >= worldsizey seed run kill @s
execute unless score @s perlinx >= worldsizex seed unless score @s perliny >= worldsizey seed run tp @s ~1 ~ ~