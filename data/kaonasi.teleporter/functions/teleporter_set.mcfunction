summon armor_stand ~ ~ ~ {CustomName:'{"text": "テレポーター"}',CustomNameVisible:true,Invisible:true,Marker:true,Invulnerable:true,NoGravity:true,Tags:["kaonasi.teleporter.teleporter"]}

execute store result score @e[tag=kaonasi.teleporter.teleporter,distance=..0.3,limit=1] scoretp_x run data get entity @s Item.tag."kaonasi.teleporter.x"
execute store result score @e[tag=kaonasi.teleporter.teleporter,distance=..0.3,limit=1] scoretp_y run data get entity @s Item.tag."kaonasi.teleporter.y"
execute store result score @e[tag=kaonasi.teleporter.teleporter,distance=..0.3,limit=1] scoretp_z run data get entity @s Item.tag."kaonasi.teleporter.z"

kill @s