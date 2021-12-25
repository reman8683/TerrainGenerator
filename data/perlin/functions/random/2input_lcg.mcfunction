#f(x,y) = mod((y^2+37)(x^2+11)

scoreboard players operation lcg2_x perlincalc = xint perlincalc
scoreboard players operation lcg2_x perlincalc *= xint perlincalc
scoreboard players add lcg2_x perlincalc 37

scoreboard players operation lcg2_y perlincalc = yint perlincalc
scoreboard players operation lcg2_y perlincalc *= yint perlincalc
scoreboard players add lcg2_y perlincalc 11


scoreboard players operation lcg2_xy perlincalc = lcg2_y perlincalc
scoreboard players operation lcg2_xy perlincalc *= lcg2_x perlincalc

scoreboard players operation lcg2_xy perlincalc %= 100 perlincalc

function perlin:random/lcg
#function perlin:random/lcg

#title @a actionbar {"score":{"name":"lcg2_xy","objective":"perlincalc"}}
execute if score lcg2_xy perlincalc matches -2147483647..-1 run scoreboard players operation lcg2_xy perlincalc *= -1 perlincalc
