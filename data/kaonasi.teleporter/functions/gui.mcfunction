execute unless block ~ ~ ~ barrel{Items:[{Slot:0b,tag:{"PortalKill":1}}]} run scoreboard players add @s kaonasi.teleporter.x 100
execute unless block ~ ~ ~ barrel{Items:[{Slot:1b,tag:{"PortalKill":1}}]} run scoreboard players add @s kaonasi.teleporter.x 10
execute unless block ~ ~ ~ barrel{Items:[{Slot:2b,tag:{"PortalKill":1}}]} run scoreboard players add @s kaonasi.teleporter.x 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:6b,tag:{"PortalKill":1}}]} run scoreboard players remove @s kaonasi.teleporter.x 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:7b,tag:{"PortalKill":1}}]} run scoreboard players remove @s kaonasi.teleporter.x 10
execute unless block ~ ~ ~ barrel{Items:[{Slot:8b,tag:{"PortalKill":1}}]} run scoreboard players remove @s kaonasi.teleporter.x 100

execute unless block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{"PortalKill":1}}]} run scoreboard players add @s kaonasi.teleporter.y 100
execute unless block ~ ~ ~ barrel{Items:[{Slot:10b,tag:{"PortalKill":1}}]} run scoreboard players add @s kaonasi.teleporter.y 10
execute unless block ~ ~ ~ barrel{Items:[{Slot:11b,tag:{"PortalKill":1}}]} run scoreboard players add @s kaonasi.teleporter.y 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{"PortalKill":1}}]} run scoreboard players remove @s kaonasi.teleporter.y 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{"PortalKill":1}}]} run scoreboard players remove @s kaonasi.teleporter.y 10
execute unless block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{"PortalKill":1}}]} run scoreboard players remove @s kaonasi.teleporter.y 100

execute unless block ~ ~ ~ barrel{Items:[{Slot:18b,tag:{"PortalKill":1}}]} run scoreboard players add @s kaonasi.teleporter.z 100
execute unless block ~ ~ ~ barrel{Items:[{Slot:19b,tag:{"PortalKill":1}}]} run scoreboard players add @s kaonasi.teleporter.z 10
execute unless block ~ ~ ~ barrel{Items:[{Slot:20b,tag:{"PortalKill":1}}]} run scoreboard players add @s kaonasi.teleporter.z 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:24b,tag:{"PortalKill":1}}]} run scoreboard players remove @s kaonasi.teleporter.z 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:25b,tag:{"PortalKill":1}}]} run scoreboard players remove @s kaonasi.teleporter.z 10
execute unless block ~ ~ ~ barrel{Items:[{Slot:26b,tag:{"PortalKill":1}}]} run scoreboard players remove @s kaonasi.teleporter.z 100

execute unless block ~ ~ ~ barrel{Items:[{Slot:22b,tag:{"PortalKill":1}}]} run scoreboard players set @s kaonasi.teleporter.x 0
execute unless block ~ ~ ~ barrel{Items:[{Slot:22b,tag:{"PortalKill":1}}]} run scoreboard players set @s kaonasi.teleporter.y 0 
execute unless block ~ ~ ~ barrel{Items:[{Slot:22b,tag:{"PortalKill":1}}]} run scoreboard players set @s kaonasi.teleporter.z 0



loot replace block ~ ~ ~ container.0 loot kaonasi.teleporter:x/100
loot replace block ~ ~ ~ container.1 loot kaonasi.teleporter:x/10
loot replace block ~ ~ ~ container.2 loot kaonasi.teleporter:x/1
loot replace block ~ ~ ~ container.3 loot kaonasi.teleporter:black_glass
loot replace block ~ ~ ~ container.4 loot kaonasi.teleporter:teleporter
item modify block ~ ~ ~ container.4 kaonasi.teleporter:teleporter
data modify block ~ ~ ~ Items[{Slot:4b}].tag.EntityTag.Tags set value ["kaonasi.teleporter.temp"]
data modify block ~ ~ ~ Items[{Slot:4b}].tag.EntityTag.Item.id set value "minecraft:barrier"
data modify block ~ ~ ~ Items[{Slot:4b}].tag.EntityTag.Item.Count set value 1
execute store result block ~ ~ ~ Items[{Slot:4b}].tag.EntityTag.Item.tag."kaonasi.teleporter.x" int 1 run scoreboard players get @s kaonasi.teleporter.x
execute store result block ~ ~ ~ Items[{Slot:4b}].tag.EntityTag.Item.tag."kaonasi.teleporter.y" int 1 run scoreboard players get @s kaonasi.teleporter.y
execute store result block ~ ~ ~ Items[{Slot:4b}].tag.EntityTag.Item.tag."kaonasi.teleporter.z" int 1 run scoreboard players get @s kaonasi.teleporter.z

loot replace block ~ ~ ~ container.5 loot kaonasi.teleporter:black_glass
loot replace block ~ ~ ~ container.6 loot kaonasi.teleporter:x/m1
loot replace block ~ ~ ~ container.7 loot kaonasi.teleporter:x/m10
loot replace block ~ ~ ~ container.8 loot kaonasi.teleporter:x/m100


loot replace block ~ ~ ~ container.9 loot kaonasi.teleporter:y/100
loot replace block ~ ~ ~ container.10 loot kaonasi.teleporter:y/10
loot replace block ~ ~ ~ container.11 loot kaonasi.teleporter:y/1
loot replace block ~ ~ ~ container.12 loot kaonasi.teleporter:black_glass
loot replace block ~ ~ ~ container.13 loot kaonasi.teleporter:black_glass
loot replace block ~ ~ ~ container.14 loot kaonasi.teleporter:black_glass
loot replace block ~ ~ ~ container.15 loot kaonasi.teleporter:y/m1
loot replace block ~ ~ ~ container.16 loot kaonasi.teleporter:y/m10
loot replace block ~ ~ ~ container.17 loot kaonasi.teleporter:y/m100


loot replace block ~ ~ ~ container.18 loot kaonasi.teleporter:z/100
loot replace block ~ ~ ~ container.19 loot kaonasi.teleporter:z/10
loot replace block ~ ~ ~ container.20 loot kaonasi.teleporter:z/1
loot replace block ~ ~ ~ container.21 loot kaonasi.teleporter:black_glass
loot replace block ~ ~ ~ container.22 loot kaonasi.teleporter:barrier
loot replace block ~ ~ ~ container.23 loot kaonasi.teleporter:black_glass
loot replace block ~ ~ ~ container.24 loot kaonasi.teleporter:z/m1
loot replace block ~ ~ ~ container.25 loot kaonasi.teleporter:z/m10
loot replace block ~ ~ ~ container.26 loot kaonasi.teleporter:z/m100