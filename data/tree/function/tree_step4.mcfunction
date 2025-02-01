execute as @e[tag=Stump4] at @s run setblock ~ ~ ~ jungle_wood replace
execute as @e[tag=Stump4] at @s run tp @s ~ ~1 ~
execute as @e[tag=Stump4,scores={Rng1=1..10}] at @s[scores={time=1..7}] run summon falling_block ~1 ~ ~ {BlockState:{Name:jungle_wood}}
execute as @e[tag=Stump4,scores={Rng1=11..20}] at @s[scores={time=1..7}] run summon falling_block ~-1 ~ ~ {BlockState:{Name:jungle_wood}}
execute as @e[tag=Stump4,scores={Rng1=21..30}] at @s[scores={time=1..7}] run summon falling_block ~ ~ ~1 {BlockState:{Name:jungle_wood}}
execute as @e[tag=Stump4,scores={Rng1=31..40}] at @s[scores={time=1..7}] run summon falling_block ~ ~ ~-1 {BlockState:{Name:jungle_wood}}


#This is a timer
execute as @e[tag=Branch4] at @s run scoreboard players add @s time 1
execute as @e[tag=Stump4] at @s run scoreboard players add @s time 1
execute as @e[tag=Leaves4] at @s run scoreboard players add @s time 1
execute as @e[tag=Leaves4_1] at @s run scoreboard players add @s time 1


execute as @e[tag=Stump4] at @s[scores={time=12..}] run summon marker ~ ~ ~ {Tags:["Leaves4"]}
execute as @e[tag=Stump4] at @s[scores={time=9..}] run summon marker ~ ~ ~ {Tags:["Leaves4"]}
execute as @e[tag=Stump4] at @s[scores={time=7..}] run summon marker ~ ~ ~ {Tags:["Leaves4"]}
execute as @e[tag=Stump4] at @s[scores={time=7..13}] run summon marker ~ ~ ~ {Tags:["Leaves4"]}
execute as @e[tag=Stump4] at @s[scores={time=7..11}] run summon marker ~ ~1 ~ {Tags:["Leaves4"]}
execute as @e[tag=Stump4] at @s[scores={time=7..9}] run summon marker ~ ~1 ~ {Tags:["Leaves4"]}

execute as @e[tag=Leaves4] at @s[scores={time=9}] run summon marker ~ ~1 ~ {Tags:["Leaves4_1"]}

#This is the leaves

execute as @e[tag=Leaves4] at @s[scores={Rng1=1}] unless entity @s[tag=stop] run tp @s ~1 ~ ~
execute as @e[tag=Leaves4] at @s[scores={Rng1=2}] unless entity @s[tag=stop] run tp @s ~-1 ~ ~
execute as @e[tag=Leaves4] at @s[scores={Rng1=3}] unless entity @s[tag=stop] run tp @s ~ ~ ~1
execute as @e[tag=Leaves4] at @s[scores={Rng1=4}] unless entity @s[tag=stop] run tp @s ~ ~ ~-1

execute as @e[tag=Leaves4] at @s[scores={Rng2=1}] unless entity @s[tag=stop] run tp @s ~ ~1 ~
execute as @e[tag=Leaves4] at @s[scores={Rng2=2}] unless entity @s[tag=stop] run tp @s ~ ~-1 ~

execute as @e[tag=Leaves4] at @s[scores={Rng2=1}] unless entity @s[tag=stop] run setblock ~ ~ ~ jungle_leaves keep

execute as @e[tag=Leaves4] at @s[scores={Rng2=2}] unless entity @s[tag=stop] if block ~1 ~ ~ jungle_leaves run setblock ~ ~ ~ vine[east=true] keep
execute as @e[tag=Leaves4] at @s[scores={Rng2=2}] unless entity @s[tag=stop] if block ~-1 ~ ~ jungle_leaves run setblock ~ ~ ~ vine[west=true] keep
execute as @e[tag=Leaves4] at @s[scores={Rng2=2}] unless entity @s[tag=stop] if block ~ ~ ~-1 jungle_leaves run setblock ~ ~ ~ vine[north=true] keep
execute as @e[tag=Leaves4] at @s[scores={Rng2=2}] unless entity @s[tag=stop] if block ~ ~ ~1 jungle_leaves run setblock ~ ~ ~ vine[south=true] keep


execute as @e[tag=Leaves4_1] at @s unless entity @s[tag=stop] run setblock ~1 ~ ~ jungle_leaves keep
execute as @e[tag=Leaves4_1] at @s unless entity @s[tag=stop] run setblock ~-1 ~ ~ jungle_leaves keep
execute as @e[tag=Leaves4_1] at @s unless entity @s[tag=stop] run setblock ~ ~1 ~ jungle_leaves keep
execute as @e[tag=Leaves4_1] at @s unless entity @s[tag=stop] run setblock ~ ~-1 ~ jungle_leaves keep
execute as @e[tag=Leaves4_1] at @s unless entity @s[tag=stop] run setblock ~ ~ ~1 jungle_leaves keep
execute as @e[tag=Leaves4_1] at @s unless entity @s[tag=stop] run setblock ~ ~ ~-1 jungle_leaves keep
#This is the ending statement

execute as @e[tag=Branch4] at @s[scores={time=2..}] run tag @s add stop
execute as @e[tag=Stump4] at @s[scores={time=10..}] run tag @s add stop
execute as @e[tag=Leaves4] at @s[scores={time=8..}] run tag @s add stop
execute as @e[tag=Leaves4_1] at @s[scores={time=1..}] run tag @s add stop
execute as @e[tag=Stump4,scores={Rng2=1}] at @s[scores={time=12..}] run kill @s


execute as @e[tag=Leaves4,tag=stop] run kill @s
execute as @e[tag=Leaves4_1,tag=stop] run kill @s