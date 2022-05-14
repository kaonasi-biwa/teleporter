execute as @a at @s as @e[tag=teleporter.maker,distance=..5] at @s unless block ~ ~-1 ~ barrel run kill @s
execute as @a at @s as @e[tag=teleporter.maker,distance=..5] at @s positioned ~ ~-1 ~ run function kaonasi.teleporter:gui
execute as @e[tag=kaonasi.teleporter.temp] at @s align xyz positioned ~0.5 ~ ~0.5 run function kaonasi.teleporter:teleporter_set
execute as @e[tag=kaonasi.teleporter.teleporter] at @s if block ~ ~ ~ player_head run kill @s
execute as @e[tag=kaonasi.teleporter.teleporter] at @s if block ~ ~ ~ player_wall_head run kill @s
execute as @a[predicate=kaonasi.teleporter:sneak] at @s if entity @e[tag=kaonasi.teleporter.teleporter,distance=..0.3] run function kaonasi.teleporter:tp


kill @e[type=item,nbt={Item:{tag:{"PortalKill":1}}}]
clear @a spectral_arrow{"PortalKill":1}
clear @a arrow{"PortalKill":1}
clear @a black_stained_glass_pane{"PortalKill":1}
clear @a barrier{"PortalKill":1}