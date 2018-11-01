#役職(チーム、タグ)初期化
#clear @a[team=!GM]
tellraw @a[m=c] [{"text":"clear_all","bold":true,"color":"light_purple"}]
scoreboard teams empty V
scoreboard teams empty W
scoreboard players tag * remove seer
scoreboard players tag * remove madman
