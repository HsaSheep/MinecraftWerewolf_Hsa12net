#役職(チーム、タグ)初期化
#clear @p[team=!GM]
tellraw @a[m=c] [{"text":"clear_me","bold":true,"color":"light_purple"}]
scoreboard teams leave @p
scoreboard players tag @p remove seer
scoreboard players tag @p remove madman