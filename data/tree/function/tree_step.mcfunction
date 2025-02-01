

#This is the stump!

execute as @e[tag=Stump,tag=stop] at @s run summon marker ~ ~ ~ {Tags:["Branch"]}


execute as @e[tag=Stump] at @s[scores={Rng1=1..30}] unless entity @s[tag=stop] run setblock ~ ~ ~ oak_wood
execute as @e[tag=Stump] at @s[scores={Rng1=1..30}] unless entity @s[tag=stop] run tp @s ~ ~1 ~


execute as @e[tag=Stump] at @s[scores={Rng1=31..35}] unless entity @s[tag=stop] run tp @s ~ ~1 ~1
execute as @e[tag=Stump] at @s[scores={Rng1=31..35}] unless entity @s[tag=stop] run setblock ~ ~ ~ oak_wood
execute as @e[tag=Stump] at @s[scores={Rng1=31..35}] unless entity @s[tag=stop] run setblock ~ ~-1 ~ minecraft:spruce_stairs[facing=north,half=top]
execute as @e[tag=Stump] at @s[scores={Rng1=31..35}] unless entity @s[tag=stop] run setblock ~ ~-1 ~-1 minecraft:spruce_stairs[facing=south,half=bottom]



execute as @e[tag=Stump] at @s[scores={Rng1=36..40}] unless entity @s[tag=stop] run tp @s ~ ~1 ~-1
execute as @e[tag=Stump] at @s[scores={Rng1=36..40}] unless entity @s[tag=stop] run setblock ~ ~ ~ oak_wood
execute as @e[tag=Stump] at @s[scores={Rng1=36..40}] unless entity @s[tag=stop] run setblock ~ ~-1 ~ minecraft:spruce_stairs[facing=south,half=top]
execute as @e[tag=Stump] at @s[scores={Rng1=36..40}] unless entity @s[tag=stop] run setblock ~ ~-1 ~1 minecraft:spruce_stairs[facing=north,half=bottom]



execute as @e[tag=Stump] at @s[scores={Rng1=41..45}] unless entity @s[tag=stop] run tp @s ~1 ~1 ~
execute as @e[tag=Stump] at @s[scores={Rng1=41..45}] unless entity @s[tag=stop] run setblock ~ ~ ~ oak_wood
execute as @e[tag=Stump] at @s[scores={Rng1=41..45}] unless entity @s[tag=stop] run setblock ~ ~-1 ~ minecraft:spruce_stairs[facing=west,half=top]
execute as @e[tag=Stump] at @s[scores={Rng1=41..45}] unless entity @s[tag=stop] run setblock ~-1 ~-1 ~ minecraft:spruce_stairs[facing=east,half=bottom]



execute as @e[tag=Stump] at @s[scores={Rng1=46..50}] unless entity @s[tag=stop] run tp @s ~-1 ~1 ~
execute as @e[tag=Stump] at @s[scores={Rng1=46..50}] unless entity @s[tag=stop] run setblock ~ ~ ~ oak_wood
execute as @e[tag=Stump] at @s[scores={Rng1=46..50}] unless entity @s[tag=stop] run setblock ~ ~-1 ~ minecraft:spruce_stairs[facing=east,half=top]
execute as @e[tag=Stump] at @s[scores={Rng1=46..50}] unless entity @s[tag=stop] run setblock ~1 ~-1 ~ minecraft:spruce_stairs[facing=west,half=bottom]


#This is a timer
execute as @e[tag=Branch] at @s run scoreboard players add @s time 1
execute as @e[tag=Stump] at @s run scoreboard players add @s time 1
execute as @e[tag=Leaves] at @s run scoreboard players add @s time 1

#These are the branches
execute as @e[tag=Stump] at @s[scores={Rng1=1..20}] run summon marker ~ ~ ~ {Tags:["Branch"]}

execute as @e[tag=Branch] at @s[scores={Rng1=1}] unless entity @s[tag=stop] run tp @s ~1 ~ ~
execute as @e[tag=Branch] at @s[scores={Rng1=2}] unless entity @s[tag=stop] run tp @s ~-1 ~ ~
execute as @e[tag=Branch] at @s[scores={Rng1=3}] unless entity @s[tag=stop] run tp @s ~ ~ ~1
execute as @e[tag=Branch] at @s[scores={Rng1=4}] unless entity @s[tag=stop] run tp @s ~ ~ ~-1

execute as @e[tag=Branch] at @s[scores={Rng1=1}] unless entity @s[tag=stop] if block ~ ~ ~1 #minecraft:air run setblock ~ ~ ~1 spruce_fence keep
execute as @e[tag=Branch] at @s[scores={Rng1=2}] unless entity @s[tag=stop] if block ~ ~ ~-1 #minecraft:air run setblock ~ ~ ~-1 spruce_fence keep
execute as @e[tag=Branch] at @s[scores={Rng1=3}] unless entity @s[tag=stop] if block ~1 ~ ~ #minecraft:air run setblock ~1 ~ ~ spruce_fence keep
execute as @e[tag=Branch] at @s[scores={Rng1=4}] unless entity @s[tag=stop] if block ~-1 ~ ~ #minecraft:air run setblock ~-1 ~ ~ spruce_fence keep

execute as @e[tag=Branch] at @s[scores={Rng2=1}] unless entity @s[tag=stop] run tp @s ~ ~1 ~
execute as @e[tag=Branch] at @s[scores={Rng2=1}] unless entity @s[tag=stop] run setblock ~ ~-1 ~ spruce_fence keep

#This is for the leaves

execute as @e[tag=Branch] at @s[scores={time=5..}] run tag @s add stop
execute as @e[tag=Stump] at @s[scores={time=10..}] run tag @s add stop
execute as @e[tag=Leaves] at @s[scores={time=6..}] run tag @s add stop
execute as @e[tag=Stump] at @s[scores={time=14..}] run kill @s

execute as @e[tag=Branch,tag=stop] at @s run summon marker ~ ~ ~ {Tags:["Leaves"]}
execute as @e[tag=Branch,tag=stop] at @s run summon marker ~ ~ ~ {Tags:["Leaves"]}
execute as @e[tag=Branch,tag=stop] at @s run summon marker ~ ~ ~ {Tags:["Leaves"]}
execute as @e[tag=Branch,tag=stop] at @s run summon marker ~ ~ ~ {Tags:["Leaves"]}
execute as @e[tag=Branch,tag=stop] at @s run summon marker ~ ~ ~ {Tags:["Leaves"]}
execute as @e[tag=Branch,tag=stop] at @s run summon marker ~ ~ ~ {Tags:["Leaves"]}

execute as @e[tag=Leaves] at @s[scores={Rng1=1}] unless entity @s[tag=stop] run tp @s ~1 ~ ~
execute as @e[tag=Leaves] at @s[scores={Rng1=2}] unless entity @s[tag=stop] run tp @s ~-1 ~ ~
execute as @e[tag=Leaves] at @s[scores={Rng1=3}] unless entity @s[tag=stop] run tp @s ~ ~ ~1
execute as @e[tag=Leaves] at @s[scores={Rng1=4}] unless entity @s[tag=stop] run tp @s ~ ~ ~-1

execute as @e[tag=Leaves] at @s[scores={Rng2=1}] unless entity @s[tag=stop] run tp @s ~ ~1 ~
execute as @e[tag=Leaves] at @s[scores={Rng2=2}] unless entity @s[tag=stop] run tp @s ~ ~-1 ~

execute as @e[tag=Leaves] at @s unless entity @s[tag=stop] run setblock ~ ~ ~ oak_leaves keep

execute as @e[tag=Leaves,tag=stop] run kill @s
execute as @e[tag=Branch,tag=stop] run kill @s
