
# サウンド
    execute if entity @s[scores={ChuzTools.Using=1}] run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 2

# デバッグキル発動
    execute if entity @s[scores={ChuzTools.Using=1..}] unless predicate useful_tools:sneak at @e[type=!player,distance=..5] run particle minecraft:entity_effect{color:[0.7,0.0,0.0,1.0]} ~ ~1 ~ 0.2 0.5 0.2 0 5 normal @s
    execute if entity @s[scores={ChuzTools.Using=1..}] unless predicate useful_tools:sneak at @e[type=!player,distance=..5] run particle minecraft:dust{color:[0.7,0.0,0.0],scale:1b} ~ ~1 ~ 0.2 0.5 0.2 0 10 normal @s
    execute unless predicate useful_tools:sneak at @s run kill @e[type=!player,distance=..5]

# 精密デバッグキル発動
    execute if entity @s[scores={ChuzTools.Using=1}] if predicate useful_tools:sneak at @n[type=!player] run particle minecraft:entity_effect{color:[0.7,0.0,0.0,1.0]} ~ ~1 ~ 0.2 0.5 0.2 0 5 normal @s
    execute if entity @s[scores={ChuzTools.Using=1}] if predicate useful_tools:sneak at @n[type=!player] run particle minecraft:dust{color:[0.7,0.0,0.0],scale:1b} ~ ~1 ~ 0.2 0.5 0.2 0 10 normal @s
    execute if entity @s[scores={ChuzTools.Using=1}] if predicate useful_tools:sneak positioned ^ ^ ^1 at @s run kill @n[type=!player,distance=..5]
