setblock ~ ~ ~ barrel{CustomName:'{"text": "テレポーター作成機"}'} destroy
summon armor_stand ~ ~1 ~ {Tags:[teleporter.maker],CustomName:'{"text": "テレポーター作成機"}',CustomNameVisible:true,Marker:1b,Invisible:true,Invulnerable:true,NoGravity:true}
execute positioned ~ ~1 ~ as @e[tag=teleporter.maker,distance=..0.2] run scoreboard players set @s kaonasi.teleporter.x 0
execute positioned ~ ~1 ~ as @e[tag=teleporter.maker,distance=..0.2] run scoreboard players set @s kaonasi.teleporter.y 0
execute positioned ~ ~1 ~ as @e[tag=teleporter.maker,distance=..0.2] run scoreboard players set @s kaonasi.teleporter.z 0