#NSP datapack. Made by MaxTheTomas. https://discord.gg/S2keanA 

execute as @a[nbt={DeathTime:1s}] run function nosneakplus:setdeathin 
execute as @a[scores={deathin=..0}] run function nosneakplus:setdeathin 

execute as @a[scores={sneaktime=1..},nbt=!{DeathTime:1}] run scoreboard players remove @s deathin 1
execute as @a[scores={sneaktime=1..}] run title @s actionbar ["",{"text":"You're sneaking! Death in: ","color":"red"},{"score":{"name":"@s","objective":"deathin"},"color":"red"}]
scoreboard players set @a[scores={deathin=..0}] sneaktime 0
scoreboard players set @a[scores={sneaktime=1..}] sneaktime 0
#COMMENT IF YOU USE CUSTOM COMMANDS:
kill @e[scores={deathin=..0}]

#UNCOMMENT TO USE CUSTOM COMMANDS:
#execute as @e[scores={deathin=..0}] at @e[scores={deathin=..0}] run function nosneakplus:customcommands