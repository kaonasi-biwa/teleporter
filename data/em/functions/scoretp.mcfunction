#!doc Teleport an entity to coordinates in scoreboard values. Set the values in the entity's score on objectives scoretp_x, scoretp_y, and scoretp_z, then execute `function em:scoretp` as the entity.
#!doc The coordinates are relative to where the command is positioned. That means if an entity is at x=100 and scoretp_x=5, running `/execute as @e run function em:scoretp` will teleport the entity to x=105.
#!doc To use the coordinates as absolute, use execute to position the command at 0,0,0. Example: `/execute positioned 0 0 0 run function em:scoretp`

#!param @s scoretp_x relative x coordinate
#!param @s scoretp_y relative y coordinate
#!param @s scoretp_z relative z coordinate

#!video https://www.youtube.com/watch?v=OINJSgKWQpg How to Teleport to Scoreboard Values (Minecraft 1.16)

#!objective scoretp_x
#!objective scoretp_y
#!objective scoretp_z

tp @s ~ ~ ~

execute if score @s scoretp_x matches 1.. run function _em:scoretp/x
execute if score @s scoretp_x matches ..-1 run function _em:scoretp/nx
execute if score @s scoretp_y matches 1.. run function _em:scoretp/y
execute if score @s scoretp_y matches ..-1 run function _em:scoretp/ny
execute if score @s scoretp_z matches 1.. run function _em:scoretp/z
execute if score @s scoretp_z matches ..-1 run function _em:scoretp/nz

# If the chunk is not already loaded, load it quickly for non-player entities.
execute at @s store success score #scoretp__chunk_loaded scoretp_x run forceload query ~ ~
execute unless score #scoretp__chunk_loaded scoretp_x matches 1 at @s[type=!minecraft:player] run forceload add ~ ~
execute unless score #scoretp__chunk_loaded scoretp_x matches 1 at @s[type=!minecraft:player] run forceload remove ~ ~
