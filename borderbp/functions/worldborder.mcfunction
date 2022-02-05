# Function for World border within a -5000x5000 area
setworldspawn 0 80 0

# Scoreboard setup and loop
scoreboard objectives add WorldBorder dummy
scoreboard players add @s WorldBorder 1
scoreboard players set @s[scores={WorldBorder=21..}] WorldBorder 1

# Teleports player x and z
execute @s ~ ~ ~ tp @p[x=5000, dx=999999] 4999 ~ ~
execute @s ~ ~ ~ tp @p[x=-5000, dx=-999999] -4999 ~ ~
execute @s ~ ~ ~ tp @p[z=5000, dz=999999] ~ ~ 4999
execute @s ~ ~ ~ tp @p[z=-5000, dz=-999999] ~ ~ -4999

# Teleports player y
execute @s ~ ~ ~ tp @p[x=4900, dx=999999, y=255, dy=999999] ~ 254 ~
execute @s ~ ~ ~ tp @p[x=-4900, dx=-999999, y=255, dy=999999] ~ 254 ~
execute @s ~ ~ ~ tp @p[z=4900, dz=999999, y=255, dy=999999] ~ 254 ~
execute @s ~ ~ ~ tp @p[z=-4900, dz=-999999, y=255, dy=999999] ~ 254 ~

# Slows player fall if flying near the wall
execute @s ~ ~ ~ effect @s[x=4900, dx=999999, y=250, dy=999999] slow_falling 35 0 true
execute @s ~ ~ ~ effect @s[x=-4900, dx=999999, y=250, dy=999999] slow_falling 35 0 true
execute @s ~ ~ ~ effect @s[z=4900, dz=999999, y=250, dy=999999] slow_falling 35 0 true
execute @s ~ ~ ~ effect @s[z=-4900, dz=999999, y=250, dy=999999] slow_falling 35 0 true

# Barriers
execute @s[z=-5001, dz=9986, scores={WorldBorder=20}] ~ ~ ~ fill -5001 0 ~ -5001 127 ~16 barrier
execute @s[z=5001, dz=-9986, scores={WorldBorder=20}] ~ ~ ~ fill -5001 0 ~ -5001 127 ~-16 barrier
execute @s[z=-5001, dz=9986, scores={WorldBorder=20}] ~ ~ ~ fill 5001 0 ~ 5001 127 ~16 barrier
execute @s[z=5001, dz=-9986, scores={WorldBorder=20}] ~ ~ ~ fill 5001 0 ~ 5001 127 ~-16 barrier

execute @s[x=-5001, dx=9986, scores={WorldBorder=20}] ~ ~ ~ fill ~ 0 -5001 ~16 127 -5001 barrier
execute @s[x=5001, dx=-9986, scores={WorldBorder=20}] ~ ~ ~ fill ~ 0 -5001 ~-16 127 -5001 barrier
execute @s[x=-5001, dx=9986, scores={WorldBorder=20}] ~ ~ ~ fill ~ 0 5001 ~16 127 5001 barrier
execute @s[x=5001, dx=-9986, scores={WorldBorder=20}] ~ ~ ~ fill ~ 0 5001 ~-16 127 5001 barrier

execute @s[z=-5001, dz=9986, scores={WorldBorder=20}] ~ ~ ~ fill -5001 128 ~ -5001 255 ~16 barrier
execute @s[z=5001, dz=-9986, scores={WorldBorder=20}] ~ ~ ~ fill -5001 128 ~ -5001 255 ~-16 barrier
execute @s[z=-5001, dz=9986, scores={WorldBorder=20}] ~ ~ ~ fill 5001 128 ~ 5001 255 ~16 barrier
execute @s[z=5001, dz=-9986, scores={WorldBorder=20}] ~ ~ ~ fill 5001 128 ~ 5001 255 ~-16 barrier

execute @s[x=-5001, dx=9986, scores={WorldBorder=20}] ~ ~ ~ fill ~ 128 -5001 ~16 255 -5001 barrier
execute @s[x=5001, dx=-9986, scores={WorldBorder=20}] ~ ~ ~ fill ~ 128 -5001 ~-16 255 -5001 barrier
execute @s[x=-5001, dx=9986, scores={WorldBorder=20}] ~ ~ ~ fill ~ 128 5001 ~16 255 5001 barrier
execute @s[x=5001, dx=-9986, scores={WorldBorder=20}] ~ ~ ~ fill ~ 128 5001 ~-16 255 5001 barrier

# Blue Stained Glass
execute @s[z=-5000, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill -5000 0 ~ -5000 127 ~16 worldborder:worldborder
execute @s[z=5000, dz=-9984, scores={WorldBorder=20}] ~ ~ ~ fill -5000 0 ~ -5000 127 ~-16 worldborder:worldborder
execute @s[z=-5000, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill 5000 0 ~ 5000 127 ~16 worldborder:worldborder
execute @s[z=5000, dz=-9984, scores={WorldBorder=20}] ~ ~ ~ fill 5000 0 ~ 5000 127 ~-16 worldborder:worldborder

execute @s[x=-5000, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 0 -5000 ~16 127 -5000 worldborder:worldborder
execute @s[x=5000, dx=-9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 0 -5000 ~-16 127 -5000 worldborder:worldborder
execute @s[x=-5000, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 0 5000 ~16 127 5000 worldborder:worldborder
execute @s[x=5000, dx=-9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 0 5000 ~-16 127 5000 worldborder:worldborder

execute @s[z=-5000, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill -5000 128 ~ -5000 255 ~16 worldborder:worldborder
execute @s[z=5000, dz=-9984, scores={WorldBorder=20}] ~ ~ ~ fill -5000 128 ~ -5000 255 ~-16 worldborder:worldborder
execute @s[z=-5000, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill 5000 128 ~ 5000 255 ~16 worldborder:worldborder
execute @s[z=5000, dz=-9984, scores={WorldBorder=20}] ~ ~ ~ fill 5000 128 ~ 5000 255 ~-16 worldborder:worldborder

execute @s[x=-5000, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 128 -5000 ~16 255 -5000 worldborder:worldborder
execute @s[x=5000, dx=-9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 128 -5000 ~-16 255 -5000 worldborder:worldborder
execute @s[x=-5000, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 128 5000 ~16 255 5000 worldborder:worldborder
execute @s[x=5000, dx=-9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 128 5000 ~-16 255 5000 worldborder:worldborder

# Glass for y
# execute @s[z=-4900, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill -4900 255 ~ -4999 255 -4999 worldborder:worldborder
# execute @s[z=-4900, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill -4900 255 ~ -4999 255 4999 worldborder:worldborder
# execute @s[z=4900, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill -4900 255 ~ -4999 255 -4999 worldborder:worldborder
# execute @s[z=-4900, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill 4900 255 ~ 4999 255 4999 worldborder:worldborder
# execute @s[z=4900, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill 4900 255 ~ 4999 255 -4999 worldborder:worldborder

# execute @s[x=-4900, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill -4900 255 ~ 4999 255 -4999 worldborder:worldborder
# execute @s[x=4900, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill -4900 255 ~ -4999 255 -4999 worldborder:worldborder
# execute @s[x=-4900, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill 4900 255 ~ 4999 255 4999 worldborder:worldborder
# execute @s[x=4900, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill 4900 255 ~ -4999 255 4999 worldborder:worldborder

# execute @s[z=-4900, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 255 -4900 -4999 255 4999 worldborder:worldborder
# execute @s[z=4900, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 255 -4900 -4999 255 -4999 worldborder:worldborder
# execute @s[z=-4900, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 255 4900 4999 255 4999 worldborder:worldborder
# execute @s[z=4900, dz=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 255 4900 4999 255 -4999 worldborder:worldborder

# execute @s[x=-4900, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 255 -4900 -4999 255 -4999 worldborder:worldborder
# execute @s[x=-4900, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 255 -4900 4999 255 -4999 worldborder:worldborder
# execute @s[x=4900, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 255 -4900 -4999 255 -4999 worldborder:worldborder
# execute @s[x=-4900, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 255 4900 4999 255 4999 worldborder:worldborder
# execute @s[x=4900, dx=9984, scores={WorldBorder=20}] ~ ~ ~ fill ~ 255 4900 -4999 255 4999 worldborder:worldborder

# Title for x and z
execute @s ~ ~ ~ titleraw @p[x=4998, dx=999999, scores={WorldBorder=20}] title {"rawtext":[{"text":"§cYou can't go there"}]}
execute @s ~ ~ ~ titleraw @p[x=4998, dx=999999, scores={WorldBorder=20}] subtitle {"rawtext":[{"text":"§9Border Addon Made by Mountain Top"}]}

execute @s ~ ~ ~ titleraw @p[x=-4998, dx=-999999, scores={WorldBorder=20}] title {"rawtext":[{"text":"§cYou can't go there"}]}
execute @s ~ ~ ~ titleraw @p[x=-4998, dx=-999999, scores={WorldBorder=20}] subtitle {"rawtext":[{"text":"§9Border Addon Made by Mountain Top"}]}

execute @s ~ ~ ~ titleraw @p[z=4998, dz=999999, scores={WorldBorder=20}] title {"rawtext":[{"text":"§cYou can't go there"}]}
execute @s ~ ~ ~ titleraw @p[z=4998, dz=999999, scores={WorldBorder=20}] subtitle {"rawtext":[{"text":"§9Border Addon Made by Mountain Top"}]}

execute @s ~ ~ ~ titleraw @p[z=-4998, dz=-999999, scores={WorldBorder=20}] title {"rawtext":[{"text":"§cYou can't go there"}]}
execute @s ~ ~ ~ titleraw @p[z=-4998, dz=-999999, scores={WorldBorder=20}] subtitle {"rawtext":[{"text":"§9Border Addon Made by Mountain Top"}]}

# Title for y
execute @s ~ ~ ~ titleraw @p[x=4998, dx=999999, y=256, dy=999999, scores={WorldBorder=20}] title {"rawtext":[{"text":"§cYou can't go there"}]}
execute @s ~ ~ ~ titleraw @p[x=4998, dx=999999, y=256, dy=999999, scores={WorldBorder=20}] subtitle {"rawtext":[{"text":"§9Border Addon Made by Mountain Top"}]}

execute @s ~ ~ ~ titleraw @p[x=-4998, dx=-999999, y=256, dy=999999, scores={WorldBorder=20}] title {"rawtext":[{"text":"§cYou can't go there"}]}
execute @s ~ ~ ~ titleraw @p[x=-4998, dx=-999999, y=256, dy=999999, scores={WorldBorder=20}] subtitle {"rawtext":[{"text":"§9Border Addon Made by Mountain Top"}]}

execute @s ~ ~ ~ titleraw @p[z=4998, dz=999999, y=256, dy=999999, scores={WorldBorder=20}] title {"rawtext":[{"text":"§cYou can't go there"}]}
execute @s ~ ~ ~ titleraw @p[z=4998, dz=999999, y=256, dy=999999, scores={WorldBorder=20}] subtitle {"rawtext":[{"text":"§9Border Addon Made by Mountain Top"}]}

execute @s ~ ~ ~ titleraw @p[z=-4998, dz=-999999, y=256, dy=999999, scores={WorldBorder=20}] title {"rawtext":[{"text":"§cYou can't go there"}]}
execute @s ~ ~ ~ titleraw @p[z=-4998, dz=-999999, y=256, dy=999999, scores={WorldBorder=20}] subtitle {"rawtext":[{"text":"§9Border Addon Made by Mountain Top"}]}