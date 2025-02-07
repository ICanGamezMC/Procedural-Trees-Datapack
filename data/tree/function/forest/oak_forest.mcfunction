#This is rng spawning forest
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{Forest:1}}}}] at @s[scores={Rng1=1..5}] if block ~ ~-1 ~ #minecraft:dirt run summon snowball ~3 ~10 ~ {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_data":{OakForest1:1}}}}
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{Forest:1}}}}] at @s[scores={Rng1=6..10}] if block ~ ~-1 ~ #minecraft:dirt run summon snowball ~-5 ~10 ~ {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_data":{OakForest1:1}}}}
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{Forest:1}}}}] at @s[scores={Rng1=11..15}] if block ~ ~-1 ~ #minecraft:dirt run summon snowball ~-8 ~10 ~2 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_data":{OakForest1:1}}}}
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{Forest:1}}}}] at @s[scores={Rng1=16..20}] if block ~ ~-1 ~ #minecraft:dirt run summon snowball ~3 ~10 ~7 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_data":{OakForest2:1}}}}
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{Forest:1}}}}] at @s[scores={Rng1=21..25}] if block ~ ~-1 ~ #minecraft:dirt run summon snowball ~7 ~10 ~9 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_data":{OakForest2:1}}}}
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{Forest:1}}}}] at @s[scores={Rng1=26..30}] if block ~ ~-1 ~ #minecraft:dirt run summon snowball ~1 ~10 ~10 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_data":{OakForest2:1}}}}
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{Forest:1}}}}] at @s[scores={Rng1=31..35}] if block ~ ~-1 ~ #minecraft:dirt run summon snowball ~8 ~10 ~-4 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_data":{OakForest3:1}}}}
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{Forest:1}}}}] at @s[scores={Rng1=36..40}] if block ~ ~-1 ~ #minecraft:dirt run summon snowball ~2 ~10 ~-7 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_data":{OakForest3:1}}}}

execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{Forest:1}}}}] at @s[scores={Rng1=1..5}] if block ~ ~-1 ~ #minecraft:dirt run summon snowball ~5 ~10 ~-8 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_data":{OakForest4:1}}}}
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{Forest:1}}}}] at @s[scores={Rng1=6..10}] if block ~ ~-1 ~ #minecraft:dirt run summon snowball ~-6 ~10 ~-3 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_data":{OakForest4:1}}}}
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{Forest:1}}}}] at @s[scores={Rng1=11..15}] if block ~ ~-1 ~ #minecraft:dirt run summon snowball ~-3 ~10 ~-7 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_data":{OakForest4:1}}}}
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{Forest:1}}}}] at @s[scores={Rng1=16..20}] if block ~ ~-1 ~ #minecraft:dirt run summon snowball ~2 ~10 ~4 {Item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_data":{OakForest4:1}}}}


#This is to execute on those dropped snowballs

execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{OakForest1:1}}}}] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:["Stump"]}
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{OakForest2:1}}}}] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:["Stump2"]}
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{OakForest3:1}}}}] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:["Bush1"]}
execute as @e[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{OakForest4:1}}}}] at @s if block ~ ~-1 ~ #minecraft:dirt run summon marker ~ ~ ~ {Tags:["Bush2"]}