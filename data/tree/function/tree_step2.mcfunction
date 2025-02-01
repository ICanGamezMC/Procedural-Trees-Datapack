
execute as @e[tag=Stump2] at @s[scores={Rng1=1..20,time=3..14}] run summon marker ~ ~ ~ {Tags:["Branch2"]}
execute as @e[tag=Stump2] at @s[scores={Rng1=21..22}] run setblock ~ ~ ~1 minecraft:birch_log[axis=z] keep
execute as @e[tag=Stump2] at @s[scores={Rng1=25..26}] run setblock ~ ~ ~-1 minecraft:birch_log[axis=z] keep
execute as @e[tag=Stump2] at @s[scores={Rng1=31..33}] run setblock ~1 ~ ~ minecraft:birch_log[axis=x] keep
execute as @e[tag=Stump2] at @s[scores={Rng1=35..37}] run setblock ~-1 ~ ~ minecraft:birch_log[axis=x] keep
execute as @e[tag=Stump2] at @s run setblock ~ ~ ~ birch_wood replace
execute as @e[tag=Stump2] at @s run tp @s ~ ~1 ~

execute as @e[tag=Stump2] at @s[scores={time=10..13}] run summon marker ~ ~ ~ {Tags:["Branch2"]}
execute as @e[tag=Stump2] at @s[scores={time=11..16}] run summon marker ~ ~ ~ {Tags:["Branch2"]}
execute as @e[tag=Stump2] at @s[scores={time=13..}] run summon marker ~ ~ ~ {Tags:["Leaves2"]}
execute as @e[tag=Stump2] at @s[scores={time=13..}] run summon marker ~ ~ ~ {Tags:["Leaves2"]}
execute as @e[tag=Stump2] at @s[scores={time=13..}] run summon marker ~ ~1 ~ {Tags:["Leaves2"]}
execute as @e[tag=Stump2] at @s[scores={time=13..}] run summon marker ~ ~1 ~ {Tags:["Leaves2"]}

execute as @e[tag=Stump2] at @s[scores={time=14..}] run summon marker ~ ~1 ~ {Tags:["Leaves2"]}

#This is a timer
execute as @e[tag=Branch2] at @s run scoreboard players add @s time 1
execute as @e[tag=Stump2] at @s run scoreboard players add @s time 1
execute as @e[tag=Leaves2] at @s run scoreboard players add @s time 1


#This is to summon leaves
execute as @e[tag=Branch2,scores={time=1..}] at @s run summon marker ~ ~ ~ {Tags:["Leaves2"]}
execute as @e[tag=Branch2,scores={time=1..}] at @s run summon marker ~ ~ ~ {Tags:["Leaves2"]}


#This is a branch
execute as @e[tag=Branch2] at @s[scores={Rng1=1}] unless entity @s[tag=stop] run tp @s ~1 ~ ~
execute as @e[tag=Branch2] at @s[scores={Rng1=2}] unless entity @s[tag=stop] run tp @s ~-1 ~ ~
execute as @e[tag=Branch2] at @s[scores={Rng1=3}] unless entity @s[tag=stop] run tp @s ~ ~ ~1
execute as @e[tag=Branch2] at @s[scores={Rng1=4}] unless entity @s[tag=stop] run tp @s ~ ~ ~-1

execute as @e[tag=Branch2] at @s unless entity @s[tag=stop] run setblock ~ ~ ~ birch_fence keep

#This is the leaves
execute as @e[tag=Leaves2] at @s[scores={Rng1=1}] unless entity @s[tag=stop] run tp @s ~1 ~ ~
execute as @e[tag=Leaves2] at @s[scores={Rng1=2}] unless entity @s[tag=stop] run tp @s ~-1 ~ ~
execute as @e[tag=Leaves2] at @s[scores={Rng1=3}] unless entity @s[tag=stop] run tp @s ~ ~ ~1
execute as @e[tag=Leaves2] at @s[scores={Rng1=4}] unless entity @s[tag=stop] run tp @s ~ ~ ~-1


execute as @e[tag=Leaves2] at @s[scores={Rng1=1..}] unless entity @s[tag=stop] run setblock ~ ~ ~ birch_leaves keep
execute as @e[tag=Leaves2] at @s[scores={Rng1=2..3}] unless entity @s[tag=stop] run setblock ~1 ~ ~ birch_leaves keep
execute as @e[tag=Leaves2] at @s[scores={Rng1=3}] unless entity @s[tag=stop] run setblock ~ ~ ~1 birch_leaves keep
execute as @e[tag=Leaves2] at @s[scores={Rng1=3}] unless entity @s[tag=stop] run setblock ~-1 ~ ~ birch_leaves keep
execute as @e[tag=Leaves2] at @s[scores={Rng1=4}] unless entity @s[tag=stop] run setblock ~ ~ ~-1 birch_leaves keep

















#This is a kill switch
execute as @e[tag=Branch2] at @s[scores={time=3..}] run tag @s add stop
execute as @e[tag=Stump2] at @s[scores={time=15..}] run tag @s add stop
execute as @e[tag=Leaves2] at @s[scores={time=3..}] run tag @s add stop
execute as @e[tag=Stump2] at @s[scores={time=17..}] run kill @s

execute as @e[tag=Leaves2,tag=stop] run kill @s
execute as @e[tag=Branch2,tag=stop] run kill @s