scoreboard players operation xint perlincalc = @s perlinx
scoreboard players operation yint perlincalc = @s perliny

scoreboard players operation xint perlincalc /= 10000 perlincalc
scoreboard players operation yint perlincalc /= 10000 perlincalc

#f(floor(x),floor(y))
function perlin:random/2input_lcg
scoreboard players set ax perlincalc -1
scoreboard players set ay perlincalc -1
execute if score lcg2_xy perlincalc matches 0..49 run scoreboard players set ax perlincalc 1
execute if score lcg2_xy perlincalc matches 25..74 run scoreboard players set ay perlincalc 1
#tellraw @a [{"text":"int coords:"},{"color":"gold","score":{"name":"xint","objective":"perlincalc"}},{"text":", "},{"color":"gold","score":{"name":"yint","objective":"perlincalc"}}]
#tellraw @a [{"text":"input: "},{"color":"gold","score":{"name":"lcg2_xy","objective":"perlincalc"}},{"text":" \t\tavector:"},{"color":"gold","score":{"name":"ax","objective":"perlincalc"}},{"text":", "},{"color":"gold","score":{"name":"ay","objective":"perlincalc"}}]

#f(floor(x)+1,floor(y))
scoreboard players add xint perlincalc 1
function perlin:random/2input_lcg
scoreboard players set bx perlincalc -1
scoreboard players set by perlincalc -1
execute if score lcg2_xy perlincalc matches 0..49 run scoreboard players set bx perlincalc 1
execute if score lcg2_xy perlincalc matches 25..74 run scoreboard players set by perlincalc 1
#tellraw @a [{"text":"int coords:"},{"color":"gold","score":{"name":"xint","objective":"perlincalc"}},{"text":", "},{"color":"gold","score":{"name":"yint","objective":"perlincalc"}}]
#tellraw @a [{"text":"input: "},{"color":"gold","score":{"name":"lcg2_xy","objective":"perlincalc"}},{"text":" \t\tbvector:"},{"color":"gold","score":{"name":"bx","objective":"perlincalc"}},{"text":", "},{"color":"gold","score":{"name":"by","objective":"perlincalc"}}]

#f(floor(x)+1,floor(y)+1)
scoreboard players add yint perlincalc 1
function perlin:random/2input_lcg
scoreboard players set dx perlincalc -1
scoreboard players set dy perlincalc -1
execute if score lcg2_xy perlincalc matches 0..49 run scoreboard players set dx perlincalc 1
execute if score lcg2_xy perlincalc matches 25..74 run scoreboard players set dy perlincalc 1
#tellraw @a [{"text":"int coords:"},{"color":"gold","score":{"name":"xint","objective":"perlincalc"}},{"text":", "},{"color":"gold","score":{"name":"yint","objective":"perlincalc"}}]
#tellraw @a [{"text":"input: "},{"color":"gold","score":{"name":"lcg2_xy","objective":"perlincalc"}},{"text":" \t\tdvector:"},{"color":"gold","score":{"name":"dx","objective":"perlincalc"}},{"text":", "},{"color":"gold","score":{"name":"dy","objective":"perlincalc"}}]

#f(floor(x),floor(y)+1)
scoreboard players remove xint perlincalc 1
function perlin:random/2input_lcg
scoreboard players set cx perlincalc -1
scoreboard players set cy perlincalc -1
execute if score lcg2_xy perlincalc matches 0..49 run scoreboard players set cx perlincalc 1
execute if score lcg2_xy perlincalc matches 25..74 run scoreboard players set cy perlincalc 1
#tellraw @a [{"text":"int coords:"},{"color":"gold","score":{"name":"xint","objective":"perlincalc"}},{"text":", "},{"color":"gold","score":{"name":"yint","objective":"perlincalc"}}]
#tellraw @a [{"text":"input: "},{"color":"gold","score":{"name":"lcg2_xy","objective":"perlincalc"}},{"text":" \t\tcvector:"},{"color":"gold","score":{"name":"cx","objective":"perlincalc"}},{"text":", "},{"color":"gold","score":{"name":"cy","objective":"perlincalc"}}]


