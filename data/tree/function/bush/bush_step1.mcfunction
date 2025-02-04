execute as @e[tag=Bush1] at @s run setblock ~ ~ ~ spruce_fence replace
execute as @e[tag=Bush1] at @s run tp @s ~ ~1 ~
execute as @e[tag=Stump] at @s[scores={Rng1=1}] unless entity @s[tag=stop] run tp @s ~ ~ ~1
execute as @e[tag=Stump] at @s[scores={Rng1=2}] unless entity @s[tag=stop] run tp @s ~ ~ ~-1
execute as @e[tag=Stump] at @s[scores={Rng1=3}] unless entity @s[tag=stop] run tp @s ~1 ~ ~
execute as @e[tag=Stump] at @s[scores={Rng1=4}] unless entity @s[tag=stop] run tp @s ~-1 ~ ~

#This is a timer
execute as @e[tag=BushBranch1] at @s run scoreboard players add @s time 1
execute as @e[tag=Bush1] at @s run scoreboard players add @s time 1
execute as @e[tag=BushLeaves1] at @s run scoreboard players add @s time 1


execute as @e[tag=BushBranch1] at @s[scores={time=12..}] run summon marker ~ ~ ~ {Tags:["BushLeaves1"]}
execute as @e[tag=BushBranch1] at @s[scores={time=9..}] run summon marker ~ ~ ~ {Tags:["BushLeaves1"]}
execute as @e[tag=BushBranch1] at @s[scores={time=7..}] run summon marker ~ ~ ~ {Tags:["BushLeaves1"]}
execute as @e[tag=BushBranch1] at @s[scores={time=7..13}] run summon marker ~ ~ ~ {Tags:["BushLeaves1"]}
execute as @e[tag=BushBranch1] at @s[scores={time=7..11}] run summon marker ~ ~1 ~ {Tags:["BushLeaves1"]}
execute as @e[tag=BushBranch1] at @s[scores={time=7..9}] run summon marker ~ ~1 ~ {Tags:["BushLeaves1"]}



#These are the branches
execute as @e[tag=Bush1] at @s[scores={Rng1=1..20}] run summon marker ~ ~ ~ {Tags:["BushBranch1"]}

execute as @e[tag=BushBranch1] at @s[scores={Rng1=1}] unless entity @s[tag=stop] run tp @s ~1 ~ ~
execute as @e[tag=BushBranch1] at @s[scores={Rng1=2}] unless entity @s[tag=stop] run tp @s ~-1 ~ ~
execute as @e[tag=BushBranch1] at @s[scores={Rng1=3}] unless entity @s[tag=stop] run tp @s ~ ~ ~1
execute as @e[tag=BushBranch1] at @s[scores={Rng1=4}] unless entity @s[tag=stop] run tp @s ~ ~ ~-1

execute as @e[tag=BushBranch1] at @s[scores={Rng1=1}] unless entity @s[tag=stop] if block ~ ~ ~1 #minecraft:air run setblock ~ ~ ~1 spruce_fence keep
execute as @e[tag=BushBranch1] at @s[scores={Rng1=2}] unless entity @s[tag=stop] if block ~ ~ ~-1 #minecraft:air run setblock ~ ~ ~-1 spruce_fence keep
execute as @e[tag=BushBranch1] at @s[scores={Rng1=3}] unless entity @s[tag=stop] if block ~1 ~ ~ #minecraft:air run setblock ~1 ~ ~ spruce_fence keep
execute as @e[tag=BushBranch1] at @s[scores={Rng1=4}] unless entity @s[tag=stop] if block ~-1 ~ ~ #minecraft:air run setblock ~-1 ~ ~ spruce_fence keep

execute as @e[tag=BushBranch1] at @s[scores={Rng2=1}] unless entity @s[tag=stop] run tp @s ~ ~1 ~
execute as @e[tag=BushBranch1] at @s[scores={Rng2=1}] unless entity @s[tag=stop] run setblock ~ ~-1 ~ spruce_fence keep





#This is the leaves

execute as @e[tag=BushBranch1] at @s[scores={time=2..}] run summon marker ~ ~ ~ {Tags:["BushLeaves1"]}
execute as @e[tag=BushBranch1] at @s[scores={time=2..}] run summon marker ~ ~ ~ {Tags:["BushLeaves1"]}
execute as @e[tag=BushBranch1] at @s[scores={time=2..}] run summon marker ~ ~ ~ {Tags:["BushLeaves1"]}
execute as @e[tag=BushBranch1] at @s[scores={time=2..}] run summon marker ~ ~ ~ {Tags:["BushLeaves1"]}
execute as @e[tag=BushBranch1] at @s[scores={time=2..}] run summon marker ~ ~ ~ {Tags:["BushLeaves1"]}

execute as @e[tag=BushLeaves1] at @s[scores={Rng1=1}] unless entity @s[tag=stop] run tp @s ~1 ~ ~
execute as @e[tag=BushLeaves1] at @s[scores={Rng1=2}] unless entity @s[tag=stop] run tp @s ~-1 ~ ~
execute as @e[tag=BushLeaves1] at @s[scores={Rng1=3}] unless entity @s[tag=stop] run tp @s ~ ~ ~1
execute as @e[tag=BushLeaves1] at @s[scores={Rng1=4}] unless entity @s[tag=stop] run tp @s ~ ~ ~-1

execute as @e[tag=BushLeaves1] at @s[scores={Rng2=1}] unless entity @s[tag=stop] run tp @s ~ ~1 ~
execute as @e[tag=BushLeaves1] at @s[scores={Rng2=2}] unless entity @s[tag=stop] run tp @s ~ ~-1 ~

execute as @e[tag=BushLeaves1] at @s unless entity @s[tag=stop] run setblock ~ ~ ~ oak_leaves keep

#This is the ending statement

execute as @e[tag=BushBranch1] at @s[scores={time=2..}] run tag @s add stop
execute as @e[tag=Bush1] at @s[scores={time=3..}] run tag @s add stop
execute as @e[tag=BushLeaves1] at @s[scores={time=3..}] run tag @s add stop
execute as @e[tag=Bush1,scores={Rng2=1}] at @s[scores={time=3..}] run kill @s


execute as @e[tag=BushLeaves1,tag=stop] run kill @s
execute as @e[tag=BushBranch1,tag=stop] run kill @s