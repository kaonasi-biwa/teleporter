execute as @a at @s as @e[tag=teleporter.maker,distance=..5] at @s unless block ~ ~-1 ~ barrel run kill @s
execute as @a at @s as @e[tag=teleporter.maker,distance=..5] at @s positioned ~ ~-1 ~ run function kaonasi.teleporter:gui

execute as @e[tag=kaonasi.teleporter.temp] at @s align xyz positioned ~0.5 ~ ~0.5 run function kaonasi.teleporter:teleporter_set

execute as @e[tag=kaonasi.teleporter.teleporter] at @s if block ~ ~ ~ #kaonasi.teleporter:player_head run kill @s

execute as @a[predicate=kaonasi.teleporter:name_change] at @s run item modify entity @s weapon.mainhand kaonasi.teleporter:name_change

execute as @a[scores={kaonasi_teleporter.set=1..,kaonasi.teleporter.enable.set=1}] at @s run function kaonasi.teleporter:set_teleport_maker
scoreboard players set @a kaonasi_teleporter.set 0
scoreboard players enable @a kaonasi_teleporter.set
scoreboard players set @a kaonasi_teleporter.name.change 0
scoreboard players enable @a kaonasi_teleporter.name.change

kill @e[type=item,nbt={Item:{tag:{"PortalKill":1}}}]