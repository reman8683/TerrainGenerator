summon area_effect_cloud ~ ~ ~ {Tags:["UUIDRNDG"]}
execute as @e[tag=UUIDRNDG] at @s store result score seedx seed run data get entity @s UUID[0] 1
execute as @e[tag=UUIDRNDG] at @s store result score seedy seed run data get entity @s UUID[1] 1
kill @e[tag=UUIDRNDG]