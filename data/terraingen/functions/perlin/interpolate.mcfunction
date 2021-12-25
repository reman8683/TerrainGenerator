#run fade function
#tellraw @a [{"text":"\nxi: "},{"color":"gold","score":{"name":"xdec","objective":"perlincalc"}},{"text":", yi: "},{"color":"gold","score":{"name":"ydec","objective":"perlincalc"}}]
#tellraw @a [{"text":"\n1-xi: "},{"color":"gold","score":{"name":"1-xdec","objective":"perlincalc"}},{"text":", 1-yi: "},{"color":"gold","score":{"name":"1-ydec","objective":"perlincalc"}}]

function terraingen:perlin/fade
#tellraw @a [{"text":"\nxf: "},{"color":"gold","score":{"name":"xdec","objective":"perlincalc"}},{"text":", yf: "},{"color":"gold","score":{"name":"ydec","objective":"perlincalc"}}]

scoreboard players set 1-xdec perlincalc 10000
scoreboard players set 1-ydec perlincalc 10000
scoreboard players operation 1-xdec perlincalc -= xdec perlincalc
scoreboard players operation 1-ydec perlincalc -= ydec perlincalc
#tellraw @a [{"text":"\n1-xf: "},{"color":"gold","score":{"name":"1-xdec","objective":"perlincalc"}},{"text":", 1-yf: "},{"color":"gold","score":{"name":"1-ydec","objective":"perlincalc"}}]


#interpolate between points using fade function adjusted x and y tellraw
#tellraw @a [{"text":"\na: "},{"color":"gold","score":{"name":"ax","objective":"perlincalc"}}]
scoreboard players operation ax perlincalc *= 1-xdec perlincalc 
scoreboard players operation ax perlincalc /= 10000 perlincalc 
scoreboard players operation ax perlincalc *= 1-ydec perlincalc 
#tellraw @a [{"text":"a interpolated: "},{"color":"gold","score":{"name":"ax","objective":"perlincalc"}}]

#tellraw @a [{"text":"\nb: "},{"color":"gold","score":{"name":"bx","objective":"perlincalc"}}]
scoreboard players operation bx perlincalc *= xdec perlincalc 
scoreboard players operation bx perlincalc /= 10000 perlincalc 
scoreboard players operation bx perlincalc *= 1-ydec perlincalc 
#tellraw @a [{"text":"b interpolated: "},{"color":"gold","score":{"name":"bx","objective":"perlincalc"}}]

#tellraw @a [{"text":"\nc: "},{"color":"gold","score":{"name":"cx","objective":"perlincalc"}}]
scoreboard players operation cx perlincalc *= 1-xdec perlincalc 
scoreboard players operation cx perlincalc /= 10000 perlincalc 
scoreboard players operation cx perlincalc *= ydec perlincalc 
#tellraw @a [{"text":"c interpolated: "},{"color":"gold","score":{"name":"cx","objective":"perlincalc"}}]

#tellraw @a [{"text":"\nd: "},{"color":"gold","score":{"name":"dx","objective":"perlincalc"}}]
scoreboard players operation dx perlincalc *= xdec perlincalc
scoreboard players operation dx perlincalc /= 10000 perlincalc 
scoreboard players operation dx perlincalc *= ydec perlincalc 
#tellraw @a [{"text":"d interpolated: "},{"color":"gold","score":{"name":"dx","objective":"perlincalc"}}]


scoreboard players operation @s perlinOutput = ax perlincalc
scoreboard players operation @s perlinOutput += bx perlincalc
scoreboard players operation @s perlinOutput += cx perlincalc
scoreboard players operation @s perlinOutput += dx perlincalc



#tellraw @a [{"text":"unscaled: "},{"color":"gold","score":{"name":"@s","objective":"perlinOutput"}}]
scoreboard players operation @s perlinOutput /= 18000 perlincalc
execute if score @s perlinx matches ..-1 run scoreboard players operation @s perlinOutput *= -1 perlincalc
execute if score @s perliny matches ..-1 run scoreboard players operation @s perlinOutput *= -1 perlincalc
scoreboard players add @s perlinOutput 5000
#tellraw @a [{"text":"scaled: "},{"color":"gold","score":{"name":"@s","objective":"perlinOutput"}}]

