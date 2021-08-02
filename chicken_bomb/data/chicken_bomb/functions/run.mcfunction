execute at @e[type=minecraft:snowball] run summon minecraft:chicken ~ ~ ~ {Tags:["bomb"]}
execute as @e[type=snowball] at @s run data modify entity @e[tag=bomb,limit=1,sort=nearest] Motion set from entity @s Motion
kill @e[type=minecraft:snowball]
execute at @e[tag=bomb,nbt={OnGround:1b}] run summon minecraft:tnt