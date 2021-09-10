# Function for World border within a -5000x5000 area

setworldspawn 0 80 0

scoreboard objectives add WorldBorder dummy
scoreboard players add @s WorldBorder 1
scoreboard players set @s[scores={WorldBorder=21..}] WorldBorder 1

execute @s ~ ~ ~ tp @p[y=256, dy=10] ~ 255 ~
execute @s ~ ~ ~ effect @s[y=256, dy=10] slow_falling 10 0 true

execute @s ~ ~ ~ tp @p[x=5000, dx=999999] 4999 ~ ~
execute @s ~ ~ ~ tp @p[x=-5000, dx=-999999] -4999 ~ ~
execute @s ~ ~ ~ tp @p[z=5000, dz=999999] ~ ~ 4999
execute @s ~ ~ ~ tp @p[z=-5000, dz=-999999] ~ ~ -4999

execute @s[z=-5000, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill -5000 0 ~ -5000 127 ~16 barrier
execute @s[z=5000, dz=-9984, scores={WorldBorder=20}] ~ ~ ~ fill -5000 0 ~ -5000 127 ~-16 barrier
execute @s[z=-5000, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill 5000 0 ~ 5000 127 ~16 barrier
execute @s[z=5000, dz=-9984, scores={WorldBorder=20}] ~ ~ ~ fill 5000 0 ~ 5000 127 ~-16 barrier

execute @s[x=-5000, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 0 -5000 ~16 127 -5000 barrier
execute @s[x=5000, dx=-9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 0 -5000 ~-16 127 -5000 barrier
execute @s[x=-5000, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 0 5000 ~16 127 5000 barrier
execute @s[x=5000, dx=-9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 0 5000 ~-16 127 5000 barrier

execute @s[z=-5001, dz=9986, scores={WorldBorder=20}] ~ ~ ~ fill -5001 0 ~ -5001 127 ~16 stained_glass 11
execute @s[z=5001, dz=-9986, scores={WorldBorder=20}] ~ ~ ~ fill -5001 0 ~ -5001 127 ~-16 stained_glass 11
execute @s[z=-5001, dz=9986, scores={WorldBorder=20}] ~ ~ ~ fill 5001 0 ~ 5001 127 ~16 stained_glass 11
execute @s[z=5001, dz=-9986, scores={WorldBorder=20}] ~ ~ ~ fill 5001 0 ~ 5001 127 ~-16 stained_glass 11

execute @s[x=-5001, dx=9986, scores={WorldBorder=20}] ~ ~ ~ fill ~ 0 -5001 ~16 127 -5001 stained_glass 11
execute @s[x=5001, dx=-9986, scores={WorldBorder=20}] ~ ~ ~ fill ~ 0 -5001 ~-16 127 -5001 stained_glass 11
execute @s[x=-5001, dx=9986, scores={WorldBorder=20}] ~ ~ ~ fill ~ 0 5001 ~16 127 5001 stained_glass 11
execute @s[x=5001, dx=-9986, scores={WorldBorder=20}] ~ ~ ~ fill ~ 0 5001 ~-16 127 5001 stained_glass 11

execute @s[z=-5000, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill -5000 128 ~ -5000 255 ~16 barrier
execute @s[z=5000, dz=-9984, scores={WorldBorder=20}] ~ ~ ~ fill -5000 128 ~ -5000 255 ~-16 barrier
execute @s[z=-5000, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill 5000 128 ~ 5000 255 ~16 barrier
execute @s[z=5000, dz=-9984, scores={WorldBorder=20}] ~ ~ ~ fill 5000 128 ~ 5000 255 ~-16 barrier

execute @s[x=-5000, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 128 -5000 ~16 255 -5000 barrier
execute @s[x=5000, dx=-9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 128 -5000 ~-16 255 -5000 barrier
execute @s[x=-5000, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 128 5000 ~16 255 5000 barrier
execute @s[x=5000, dx=-9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 128 5000 ~-16 255 5000 barrier

# Blue Stained Glass

execute @s[z=-5001, dz=9986, scores={WorldBorder=20}] ~ ~ ~ fill -5001 128 ~ -5001 255 ~16 stained_glass 11
execute @s[z=5001, dz=-9986, scores={WorldBorder=20}] ~ ~ ~ fill -5001 128 ~ -5001 255 ~-16 stained_glass 11
execute @s[z=-5001, dz=9986, scores={WorldBorder=20}] ~ ~ ~ fill 5001 128 ~ 5001 255 ~16 stained_glass 11
execute @s[z=5001, dz=-9986, scores={WorldBorder=20}] ~ ~ ~ fill 5001 128 ~ 5001 255 ~-16 stained_glass 11

execute @s[x=-5001, dx=9986, scores={WorldBorder=20}] ~ ~ ~ fill ~ 128 -5001 ~16 255 -5001 stained_glass 11
execute @s[x=5001, dx=-9986, scores={WorldBorder=20}] ~ ~ ~ fill ~ 128 -5001 ~-16 255 -5001 stained_glass 11
execute @s[x=-5001, dx=9986, scores={WorldBorder=20}] ~ ~ ~ fill ~ 128 5001 ~16 255 5001 stained_glass 11
execute @s[x=5001, dx=-9986, scores={WorldBorder=20}] ~ ~ ~ fill ~ 128 5001 ~-16 255 5001 stained_glass 11

# Title Test

execute @s ~ ~ ~ titleraw @p[y=255, dy=10] title {"rawtext":[{"text":"§cYou can't go there"}]}
execute @s ~ ~ ~ titleraw @p[y=255, dy=10] subtitle {"rawtext":[{"text":"§9Border Addon Made by Mountain Top"}]}

execute @s ~ ~ ~ titleraw @p[x=4999, dx=999999] title {"rawtext":[{"text":"§cYou can't go there"}]}
execute @s ~ ~ ~ titleraw @p[x=4999, dx=999999] subtitle {"rawtext":[{"text":"§9Border Addon Made by Mountain Top"}]}

execute @s ~ ~ ~ titleraw @p[x=-4999, dx=-999999] title {"rawtext":[{"text":"§cYou can't go there"}]}
execute @s ~ ~ ~ titleraw @p[x=-4999, dx=-999999] subtitle {"rawtext":[{"text":"§9Border Addon Made by Mountain Top"}]}

execute @s ~ ~ ~ titleraw @p[z=4999, dz=999999] title {"rawtext":[{"text":"§cYou can't go there"}]}
execute @s ~ ~ ~ titleraw @p[z=4999, dz=999999] subtitle {"rawtext":[{"text":"§9Border Addon Made by Mountain Top"}]}

execute @s ~ ~ ~ titleraw @p[z=-4999, dz=-999999] title {"rawtext":[{"text":"§cYou can't go there"}]}
execute @s ~ ~ ~ titleraw @p[z=-4999, dz=-999999] subtitle {"rawtext":[{"text":"§9Border Addon Made by Mountain Top"}]}