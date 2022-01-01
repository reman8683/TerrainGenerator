scoreboard players operation xint perlincalc = @s perlinx
scoreboard players operation yint perlincalc = @s perliny

scoreboard players operation xint perlincalc /= 10000 perlincalc
scoreboard players operation yint perlincalc /= 10000 perlincalc

#f(floor(x),floor(y))
function terraingen:random/2input_lcg
scoreboard players set ax perlincalc -1
scoreboard players set ay perlincalc -1
execute if score lcg2_xy perlincalc matches 0..49 run scoreboard players set ax perlincalc 1
execute if score lcg2_xy perlincalc matches 25..74 run scoreboard players set ay perlincalc 1

#f(floor(x)+1,floor(y))
scoreboard players add xint perlincalc 1
function terraingen:random/2input_lcg
scoreboard players set bx perlincalc -1
scoreboard players set by perlincalc -1
execute if score lcg2_xy perlincalc matches 0..49 run scoreboard players set bx perlincalc 1
execute if score lcg2_xy perlincalc matches 25..74 run scoreboard players set by perlincalc 1

#f(floor(x)+1,floor(y)+1)
scoreboard players add yint perlincalc 1
function terraingen:random/2input_lcg
scoreboard players set dx perlincalc -1
scoreboard players set dy perlincalc -1
execute if score lcg2_xy perlincalc matches 0..49 run scoreboard players set dx perlincalc 1
execute if score lcg2_xy perlincalc matches 25..74 run scoreboard players set dy perlincalc 1

#f(floor(x),floor(y)+1)
scoreboard players remove xint perlincalc 1
function terraingen:random/2input_lcg
scoreboard players set cx perlincalc -1
scoreboard players set cy perlincalc -1
execute if score lcg2_xy perlincalc matches 0..49 run scoreboard players set cx perlincalc 1
execute if score lcg2_xy perlincalc matches 25..74 run scoreboard players set cy perlincalc 1
