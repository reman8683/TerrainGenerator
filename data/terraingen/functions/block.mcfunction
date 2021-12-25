#get location in score
execute store result score @s perlinx run data get entity @s Pos[0] 200
execute store result score @s perliny run data get entity @s Pos[2] 200

#offsets
scoreboard players add @s perlinx 621000123
scoreboard players add @s perliny 71234002

#generate noise
function #terraingen:noise

#set block at corresponding height
summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:[PlaceBlock]} 
execute store result entity @e[tag=PlaceBlock,limit=1] Pos[1] double 0.004 run scoreboard players get @s perlinOutput


execute at @e[tag=PlaceBlock] run fill ~ 255 ~ ~ ~1 ~ air
execute at @e[tag=PlaceBlock] run fill ~ 0 ~ ~ 0 ~ bedrock
execute at @e[tag=PlaceBlock] run fill ~ 1 ~ ~ ~ ~ stone
execute at @e[tag=PlaceBlock] run fill ~ ~-1 ~ ~ ~-2 ~ grass_block
execute at @e[tag=PlaceBlock] run fill ~ ~ ~ ~ ~ ~ grass_block

kill @e[tag=PlaceBlock]

#move to next block
tp @s ~1 ~ ~

#test if out of bounds and tp to next row or kill armorstand

execute store result score @s perlinx run data get entity @s Pos[0] 1
execute store result score @s perliny run data get entity @s Pos[2] 1

execute if score @s perlinx matches 256.. run tp @s 0 ~ ~1
execute if score @s perliny matches 256.. run kill @s