#ゲームスタート
### --- debug用 --- ###
#setblock 29 62 231 minecraft:wool 4
#######################
#昼の処理-タイトル「昼」表示設定
setblock 30 61 225 minecraft:redstone_block 0
#昼の処理-タイトル「終了」表示設定_解除
setblock 31 61 226 minecraft:air 0
#昼の処理-昼タイマー起動に設定
setblock 30 61 226 minecraft:redstone_block 0
#日付カウント開始
setblock 47 60 223 minecraft:redstone_block 0
#強制終了フラグ_解除
setblock 49 61 232 minecraft:wool 4 0
#リスポーンモードをスペクテイターに切り替え
setblock -12 60 325 minecraft:redstone_torch 0
#陣営全滅判定の処理開始
setblock 38 60 223 minecraft:redstone_block 0
#右クリックアイテム判定開始
setblock 46 60 216 minecraft:redstone_block 0 replace minecraft:wool
#夜間のスケ沸き開始
setblock 50 70 219 minecraft:wool 4 replace minecraft:redstone_block
#屋敷前ゲート閉鎖
setblock 39 61 169 minecraft:redstone_block 0 replace minecraft:wool
#昼の処理開始(最後のsetblock)
setblock 33 60 225 minecraft:redstone_block 0
### --setblock ここまで-- ###
#### --設定用アイテム消去-- ####
#ゲーム内アイテム消去
function werewolf:setting/clear_item/game_items
#占い部屋用アイテム消去
function werewolf:setting/clear_item/seerroom_items
#ドロップアイテム消去
kill @e[type=item]
### --アイテム消去ここまで-- ###
#GM以外ゲームモードをアドベンチャーに変更
gamemode 2 @a[team=!GM]
#満腹度回復終了
effect @a[team=!GM] minecraft:saturation 0 255
#ヘルス回復終了
effect @a[team=!GM] minecraft:instant_health 0 30
#棒配布
give @a[team=!GM] minecraft:stick 1 0 {display:{Name:"鈍器(棒)",Lore:["ただの木の棒。","でもたたかれるととても痛い。","人をたたかないように。"]}}
#スケ剣配布
give @a[team=!GM] minecraft:wooden_sword 1 0 {HideFlags:63,display:{Name:"スケ狩り剣",Lore:["誰でも使える。","スケルトンに大ダメージ。","ちなみにプレイヤーには","ただの木の剣のダメージしかない。"]},ench:[{id:17,lvl:5},{id:34s,lvl:1}]}