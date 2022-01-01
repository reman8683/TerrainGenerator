#run fade function

function terraingen:perlin/fade

scoreboard players set 1-xdec perlincalc 10000
scoreboard players set 1-ydec perlincalc 10000
scoreboard players operation 1-xdec perlincalc -= xdec perlincalc
scoreboard players operation 1-ydec perlincalc -= ydec perlincalc

#interpolate between points using fade function adjusted x and y tellraw
scoreboard players operation ax perlincalc *= 1-xdec perlincalc 
scoreboard players operation ax perlincalc /= 10000 perlincalc 
scoreboard players operation ax perlincalc *= 1-ydec perlincalc 

scoreboard players operation bx perlincalc *= xdec perlincalc 
scoreboard players operation bx perlincalc /= 10000 perlincalc 
scoreboard players operation bx perlincalc *= 1-ydec perlincalc 

scoreboard players operation cx perlincalc *= 1-xdec perlincalc 
scoreboard players operation cx perlincalc /= 10000 perlincalc 
scoreboard players operation cx perlincalc *= ydec perlincalc 

scoreboard players operation dx perlincalc *= xdec perlincalc
scoreboard players operation dx perlincalc /= 10000 perlincalc 
scoreboard players operation dx perlincalc *= ydec perlincalc 

scoreboard players operation @s perlinOutput = ax perlincalc
scoreboard players operation @s perlinOutput += bx perlincalc
scoreboard players operation @s perlinOutput += cx perlincalc
scoreboard players operation @s perlinOutput += dx perlincalc

scoreboard players operation @s perlinOutput /= 18000 perlincalc
execute if score @s perlinx matches ..-1 run scoreboard players operation @s perlinOutput *= -1 perlincalc
execute if score @s perliny matches ..-1 run scoreboard players operation @s perlinOutput *= -1 perlincalc
scoreboard players add @s perlinOutput 5000
