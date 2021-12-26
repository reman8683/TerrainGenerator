execute store result score @s perlinx run data get entity @s Pos[0] 10000
execute store result score @s perliny run data get entity @s Pos[2] 10000
#offsets
scoreboard players operation @s perlinx += seedx seed
scoreboard players operation @s perliny += seedy seed

function #terraingen:noise
summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["PlaceBlockBedrock"]} 
execute store result entity @e[tag=PlaceBlockBedrock,limit=1] Pos[1] double 0.0001 run scoreboard players get @s perlinOutput

execute at @e[tag=PlaceBlockBedrock] run fill ~ 0 ~ ~ ~.35 ~ bedrock

kill @e[tag=PlaceBlockBedrock]