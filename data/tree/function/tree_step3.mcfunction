execute as @e[tag=Stump3] at @s run setblock ~ ~ ~ spruce_wood replace
execute as @e[tag=Stump3] at @s run tp @s ~ ~1 ~
execute as @e[tag=Stump3] at @s[scores={Rng1=1..10,time=1}] run setblock ~ ~ ~1 minecraft:dark_oak_stairs[facing=north] replace
execute as @e[tag=Stump3] at @s[scores={Rng1=11..20,time=1}] run setblock ~ ~ ~-1 minecraft:dark_oak_stairs[facing=south] replace
execute as @e[tag=Stump3] at @s[scores={Rng1=21..30,time=1}] run setblock ~1 ~ ~ minecraft:dark_oak_stairs[facing=west] replace
execute as @e[tag=Stump3] at @s[scores={Rng1=31..40,time=1}] run setblock ~-1 ~ ~ minecraft:dark_oak_stairs[facing=east] replace


#This is a timer
execute as @e[tag=Branch3] at @s run scoreboard players add @s time 1
execute as @e[tag=Stump3] at @s run scoreboard players add @s time 1
execute as @e[tag=Leaves3] at @s run scoreboard players add @s time 1
execute as @e[tag=Leaves3_1] at @s run scoreboard players add @s time 1

execute as @e[tag=Stump3] at @s[scores={time=14..}] run summon marker ~ ~ ~ {Tags:["Leaves3_1"]}
execute as @e[tag=Stump3] at @s[scores={time=7..}] run summon marker ~ ~ ~ {Tags:["Leaves3"]}
execute as @e[tag=Stump3] at @s[scores={time=7..15}] run summon marker ~ ~ ~ {Tags:["Leaves3"]}
execute as @e[tag=Stump3] at @s[scores={time=7..11}] run summon marker ~ ~1 ~ {Tags:["Leaves3"]}
execute as @e[tag=Stump3] at @s[scores={time=7..9}] run summon marker ~ ~1 ~ {Tags:["Leaves3"]}


#execute as @e[tag=Stump2] at @s[scores={Rng1=1..20,time=3..14}] run summon marker ~ ~ ~ {Tags:["Branch2"]}


execute as @e[tag=Leaves3] at @s[scores={Rng1=1}] unless entity @s[tag=stop] run tp @s ~1 ~ ~
execute as @e[tag=Leaves3] at @s[scores={Rng1=2}] unless entity @s[tag=stop] run tp @s ~-1 ~ ~
execute as @e[tag=Leaves3] at @s[scores={Rng1=3}] unless entity @s[tag=stop] run tp @s ~ ~ ~1
execute as @e[tag=Leaves3] at @s[scores={Rng1=4}] unless entity @s[tag=stop] run tp @s ~ ~ ~-1

execute as @e[tag=Leaves3_1] at @s[scores={Rng2=1}] unless entity @s[tag=stop] run tp @s ~ ~1 ~
execute as @e[tag=Leaves3_1] at @s[scores={Rng2=2}] unless entity @s[tag=stop] run tp @s ~ ~-1 ~

execute as @e[tag=Leaves3] at @s unless entity @s[tag=stop] run setblock ~ ~ ~ spruce_leaves keep
execute as @e[tag=Leaves3_1] at @s unless entity @s[tag=stop] run setblock ~ ~ ~ spruce_leaves keep





execute as @e[tag=Branch3] at @s[scores={time=2..}] run tag @s add stop
execute as @e[tag=Stump3] at @s[scores={time=10..}] run tag @s add stop
execute as @e[tag=Leaves3] at @s[scores={time=6..}] run tag @s add stop
execute as @e[tag=Leaves3_1] at @s[scores={time=6..}] run tag @s add stop
execute as @e[tag=Stump3,scores={Rng1=20..}] at @s[scores={time=17..}] run kill @s

execute as @e[tag=Leaves3,tag=stop] run kill @s
execute as @e[tag=Leaves3_1,tag=stop] run kill @s