#役職部屋へ移動
tp @a[team=!GM] 32 72 224
#ゲームモード変更
gamemode 2 @a[team=!GM]
#即時回復
effect @a[team=!GM] minecraft:instant_health 999999 30 true
#満腹度回復
effect @a[team=!GM] minecraft:saturation 999999 255 true
#体力増強(2段)
effect @a[team=!GM] minecraft:health_boost 999999 4 true
#アイテム消去
clear @a[team=!GM]
#占い部屋下結果コマブロ消去
fill 49 69 227 54 69 230 minecraft:air 0 replace minecraft:chain_command_block
#チーム・役職タグ消去
function werewolf:setting/role/clear_all
#scoreboard players tag * remove seer
#scoreboard players tag * remove madman