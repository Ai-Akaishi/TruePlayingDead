### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# 謎の移動を制限
data modify entity @s Motion set value [0d,0d,0d]
# 死んだふりが終わっていたらチームから抜ける
execute unless data entity @s Brain.memories."minecraft:play_dead_ticks" run team leave @s
