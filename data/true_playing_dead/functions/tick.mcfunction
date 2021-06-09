### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# 死んだふりになった瞬間にfunction実行
execute as @e[type=minecraft:axolotl,team=!TruePlayingDead,nbt={Brain:{memories:{"minecraft:play_dead_ticks":{}}}}] at @s run function true_playing_dead:play
# 死んだふりになっている間にfunction実行
execute as @e[type=minecraft:axolotl,team=TruePlayingDead] run function true_playing_dead:play_tick
