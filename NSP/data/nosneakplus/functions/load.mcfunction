#NSP datapack. Made by MaxTheTomas. https://discord.gg/S2keanA 

kill @e[type=armor_stand,tag=nspconfig]
scoreboard objectives add deathin dummy
scoreboard objectives add cfg_deathin dummy
scoreboard objectives add sneaktime minecraft.custom:minecraft.sneak_time

#Config Armor Stand
summon armor_stand 0 255 0 {Tags:["nspconfig"],NoGravity:1,Invulnerable:1}

#Config now in config.mcfunction.
execute as @e[type=armor_stand,tag=nspconfig] run function nosneakplus:config

#Setting up deathticks
execute as @a run function nosneakplus:setdeathin

#Tellrawing info for u.
tellraw @a ["",{"text":"Welcome to ","clickEvent":{"action":"open_url","value":"https://discord.gg/S2keanA"},"hoverEvent":{"action":"show_text","value":["",{"text":"No Sneak Plus","color":"yellow"},{"text":"\n"},{"text":"Made by _MaxTheTomas_","color":"gold"},{"text":"\n"},{"text":"(click to open discord)","color":"gray"}]}},{"text":"NSP","color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/S2keanA"},"hoverEvent":{"action":"show_text","value":["",{"text":"No Sneak Plus","color":"yellow"},{"text":"\n"},{"text":"Made by _MaxTheTomas_","color":"gold"},{"text":"\n"},{"text":"(click to open discord)","color":"gray"}]}},{"text":"\n"},{"text":"You can edit sneak-ticks before death. (now ","italic":true},{"score":{"name":"@e[tag=nspconfig,limit=1]","objective":"cfg_deathin"},"italic":true},{"text":")","italic":true},{"text":"\n"},{"text":"To edit it use ","italic":true},{"text":"config.mcfunction","italic":true,"hoverEvent":{"action":"show_text","value":"NoSneakPlus/data/nosneakplus/functions/config.mcfunction"}},{"text":" file or ","italic":true},{"text":"[click]","italic":true,"clickEvent":{"action":"suggest_command","value":"/scoreboard players set @e[tag=nspconfig] cfg_deathin [ticks]"},"hoverEvent":{"action":"show_text","value":"/scoreboard players set @e[tag=nspconfig] cfg_deathin [ticks]"}},{"text":".","italic":true}]