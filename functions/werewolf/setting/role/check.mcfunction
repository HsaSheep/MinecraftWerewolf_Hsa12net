#役職チェック
tellraw @a [{"text":"------- テスト開始 -------","bold":true}]
tellraw @a[team=!GM,tag=] [{"text":"役職無し(team=,tag=)。","bold":true,"color":"white"}]
tellraw @a[team=V,tag=] [{"text":"村人(team=V)。","bold":true,"color":"dark_green"}]
tellraw @a[team=W,tag=] [{"text":"人狼(team=W)。","bold":true,"color":"red"}]
tellraw @a[team=V,tag=seer]    [{"text":"占い師(tag=seer)。","bold":true,"color":"blue"}]
tellraw @a[team=V,tag=madman]  [{"text":"狂人(tag=madman)。","bold":true,"color":"gold"}]
#ここまで正常終了
#ここからチーム役職タグ不一致エラー
tellraw @a[team=W,tag=seer] [{"text":"役職タグ不一致エラー(team=W,tag=madman)。\n再度、役職本でチーム・タグを設定してください。","bold":true,"color":"light_purple"}]
execute @a[team=W,tag=seer] ~ ~ ~ /function werewolf:setting/role/clear_me
#
tellraw @a[team=W,tag=madman] [{"text":"役職タグ不一致エラー(team=W,tag=madman)。\n再度、役職本でチーム・タグを設定してください。","bold":true,"color":"light_purple"}]
execute @a[team=W,tag=madman] ~ ~ ~ /function werewolf:setting/role/clear_me
## 役職tag複数エラー
execute @a[tag=seer] ~ ~ ~ /tellraw @a[c=1,tag=madman] [{"text":"役職タグ複数検出エラー(tag=seer and madman)。\n再度、役職本でチーム・タグを設定してください。","bold":true,"color":"light_purple"}]
execute @a[tag=seer] ~ ~ ~ /execute @a[c=1,tag=madman] ~ ~ ~ /function werewolf:setting/role/clear_me
#テスト終了
tellraw @a [{"text":"--------------------------\n","bold":true}]