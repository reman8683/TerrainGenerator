scoreboard objectives add perlinx dummy
scoreboard objectives add perliny dummy
scoreboard objectives add perlincalc dummy
scoreboard objectives add perlinOutput dummy

#perlincalc numbers: 20000000, 1000000, 100000, 20000, 18000, 10000, 5001, 2000,400,167,131,100,50,28,12,11,4,3,-1
scoreboard objectives add perlincalc dummy
scoreboard players set 2000000 perlincalc 2000000
scoreboard players set 1000000 perlincalc 1000000
scoreboard players set 100000 perlincalc 100000
scoreboard players set 20000 perlincalc 20000
scoreboard players set 18000 perlincalc 18000
scoreboard players set 10000 perlincalc 10000
scoreboard players set 5001 perlincalc 5001
scoreboard players set 2000 perlincalc 2000
scoreboard players set 400 perlincalc 400
scoreboard players set 167 perlincalc 167
scoreboard players set 131 perlincalc 131
scoreboard players set 100 perlincalc 100
scoreboard players set 50 perlincalc 50
scoreboard players set 28 perlincalc 28
scoreboard players set 12 perlincalc 12
scoreboard players set 11 perlincalc 11
scoreboard players set 4 perlincalc 4
scoreboard players set 3 perlincalc 3
scoreboard players set -1 perlincalc -1

#fade numbers: 100000, 10000,500,3
scoreboard objectives add fade dummy
scoreboard players set 100000 fade 100000
scoreboard players set 10000 fade 10000
scoreboard players set 500 fade 500
scoreboard players set 3 fade 3

#lcg numbers: 100, 11
scoreboard objectives add lcg dummy
scoreboard players set 100 lcg 100
scoreboard players set 11 lcg 11

#seed vars: sealevel, worldsizex, worldsizey, numbers: 500
scoreboard objectives add seed dummy
scoreboard players set sealevel seed 64
scoreboard players set 500 seed 500
scoreboard players operation sealevel seed *= 500 seed
scoreboard players set worldsizex seed 256
scoreboard players set worldsizey seed 256