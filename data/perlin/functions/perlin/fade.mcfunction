#calculate 3/10000 * z^2 - (z^3/500)/100000

scoreboard players operation ^2 fade = xdec perlincalc
scoreboard players operation ^2 fade *= xdec perlincalc

scoreboard players operation ^3 fade = ^2 fade
scoreboard players operation ^3 fade /= 500 fade
scoreboard players operation ^3 fade *= xdec perlincalc
scoreboard players operation ^3 fade /= 100000 fade

scoreboard players operation ^2 fade *= 3 fade
scoreboard players operation ^2 fade /= 10000 fade

scoreboard players operation xdec perlincalc = ^2 fade
scoreboard players operation xdec perlincalc -= ^3 fade

#calculate y

scoreboard players operation ^2 fade = ydec perlincalc
scoreboard players operation ^2 fade *= ydec perlincalc

scoreboard players operation ^3 fade = ^2 fade
scoreboard players operation ^3 fade /= 500 fade
scoreboard players operation ^3 fade *= ydec perlincalc
scoreboard players operation ^3 fade /= 100000 fade

scoreboard players operation ^2 fade *= 3 fade
scoreboard players operation ^2 fade /= 10000 fade

scoreboard players operation ydec perlincalc = ^2 fade
scoreboard players operation ydec perlincalc -= ^3 fade
