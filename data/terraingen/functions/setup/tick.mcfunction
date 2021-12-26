execute if entity @e[tag=perlin] run function terraingen:gen/gen_block

#worldsize
execute store result score perlinx seed run data get entity @s Pos[0] 1
execute store result score perliny seed run data get entity @s Pos[2] 1
execute if score perlinx seed >= worldsizex seed run tp @s 0 ~ ~1
execute if score perliny seed >= worldsizey seed run kill @s