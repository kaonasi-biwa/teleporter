execute unless entity @e[tag=kaonasi.teleporter.core] run summon marker ~ ~ ~ {Tags:["kaonasi.teleporter.core"],CustomName:'{"text": "テレポーター"}'}
execute as @e[tag=kaonasi.teleporter.core] run say 導入できました！ by kaonasi_biwa
execute as @e[tag=kaonasi.teleporter.core] run say  emeraldfyr3さんのem-libを使わせていただきました。ありがとうございました！

scoreboard objectives add kaonasi.teleporter.x dummy
scoreboard objectives add kaonasi.teleporter.y dummy
scoreboard objectives add kaonasi.teleporter.z dummy
scoreboard objectives add kaonasi_teleporter.name.change trigger