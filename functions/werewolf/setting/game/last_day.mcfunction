#今日で最後（最終日、中断時用）
### --- debug用 --- ###
#setblock 29 62 225 minecraft:wool 4
#######################
#昼の処理-タイトル「昼」表示設定_解除
setblock 30 61 225 minecraft:air 0
#昼の処理-タイトル「終了」表示設定
setblock 31 61 226 minecraft:redstone_block 0
#昼の処理-昼タイマー起動に設定_解除
setblock 30 61 226 minecraft:air 0
#右クリックアイテム判定停止
setblock 46 60 216 minecraft:wool 4 replace minecraft:redstorn_block
### --setblock ここまで-- ###