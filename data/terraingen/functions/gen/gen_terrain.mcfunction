#generate
function #terraingen:terrain

#worldsize
execute store result score @s perlinx run data get entity @s Pos[0] 1
execute store result score @s perliny run data get entity @s Pos[2] 1
execute if score @s perlinx >= worldsizex seed run tp @s 0 ~ ~1
execute if score @s perliny >= worldsizey seed run kill @s
execute unless score @s perlinx >= worldsizex seed unless score @s perliny >= worldsizey seed run tp @s ~1 ~ ~