#昼共通処理
#起動ブロック消去
setblock 33 60 225 minecraft:wool 4
#不死身アイテム効果消去
effect @a[team=!GM] minecraft:resistance 0 255 true
title @a times 20 100 20
title @a subtitle ["",{"text":"\u26a0","bold":true,"color":"yellow"},{"text":"\u30df\u30e5\u30fc\u30c8\u3092\u89e3\u9664\u3057\u3066\u304f\u3060\u3055\u3044","bold":true,"color":"red"},{"text":"\u26a0","bold":true,"color":"yellow"}]
#朝にする
time set 6000
#天気
weather clear
#念のためセーブ
save-all