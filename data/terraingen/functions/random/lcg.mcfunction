#calculate l1 = mod(l * 3 + 81 + mod(l0,11),5004)
scoreboard players operation lcg_a^2 lcg = lcg2_xy perlincalc
scoreboard players operation lcg_a^2 lcg *= 4 perlincalc
scoreboard players add lcg_a^2 lcg 30
#scoreboard players operation lcg_a^2 lcg += lcg_mod(a,11) lcg
scoreboard players operation lcg_a^2 lcg %= 100 lcg
scoreboard players operation lcg2_xy perlincalc = lcg_a^2 lcg