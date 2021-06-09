### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# 透明になる
effect give @s minecraft:invisibility 10 127 true
data modify entity @s ActiveEffects[{Id:14b}].Duration set from entity @s Brain.memories."minecraft:play_dead_tick".value
# 移動しなくする
data modify entity @s Motion set value [0d,0d,0d]
team add TruePlayingDead
team modify TruePlayingDead collisionRule never
team join TruePlayingDead @s
# ダミーを出現させる
summon minecraft:axolotl ~ ~ ~ {Tags:[TruePlayingDead],DeathTime:-180s,NoAI:true}
data modify entity @e[tag=TruePlayingDead,distance=..0,limit=1] Variant set from entity @s Variant
data modify entity @e[tag=TruePlayingDead,distance=..0,limit=1] Rotation set from entity @s Rotation
data modify entity @e[tag=TruePlayingDead,distance=..0,limit=1] Motion set from entity @s Motion
data modify entity @e[tag=TruePlayingDead,distance=..0,limit=1] Health set value 0s
