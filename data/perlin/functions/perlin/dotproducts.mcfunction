scoreboard players operation xdec perlincalc = @s perlinx
scoreboard players operation ydec perlincalc = @s perliny
scoreboard players operation xdec perlincalc %= 10000 perlincalc
scoreboard players operation ydec perlincalc %= 10000 perlincalc

scoreboard players set 1-xdec perlincalc -10000
scoreboard players set 1-ydec perlincalc -10000

execute if score xdec perlincalc matches ..-1 run scoreboard players add xdec perlincalc 10000
execute if score ydec perlincalc matches ..-1 run scoreboard players add ydec perlincalc 10000
scoreboard players operation 1-xdec perlincalc += xdec perlincalc
scoreboard players operation 1-ydec perlincalc += ydec perlincalc


#dotproducts store in [a,b,c,d]x
#a = (0,0), b = (1,0), c = (0,1), d = (1,1)
scoreboard players operation ax perlincalc *= xdec perlincalc 
scoreboard players operation ay perlincalc *= ydec perlincalc 
scoreboard players operation ax perlincalc += ay perlincalc 

scoreboard players operation bx perlincalc *= 1-xdec perlincalc 
scoreboard players operation by perlincalc *= ydec perlincalc 
scoreboard players operation bx perlincalc += by perlincalc 

scoreboard players operation cx perlincalc *= xdec perlincalc 
scoreboard players operation cy perlincalc *= 1-ydec perlincalc 
scoreboard players operation cx perlincalc += cy perlincalc 

scoreboard players operation dx perlincalc *= 1-xdec perlincalc 
scoreboard players operation dy perlincalc *= 1-ydec perlincalc 
scoreboard players operation dx perlincalc += dy perlincalc 
