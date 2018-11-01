#ゲーム終了(中断)
### --- debug用 --- ###
setblock 52 60 230 minecraft:wool 4 0
#######################
setblock 29 62 225 minecraft:redstone_block 0
setblock 49 61 232 minecraft:redstone_block 0
#リスポーンモードをアドベンチャーに切り替え
setblock -12 60 325 minecraft:air 0
#陣営全滅判定の処理_終了
setblock 38 60 223 minecraft:wool 4 0
#スケ沸き停止
setblock 50 70 219 minecraft:redstone_block 0 replace minecraft:wool
#屋敷前ゲート開放
setblock 39 61 169 minecraft:wool 4 replace minecraft:redstorn_block
### --setblock ここまで-- ###
scoreboard players set @e[tag=timer] timerT 0
scoreboard players set @e[tag=timer_night] timerT 0
kill @e[tag=day]
#満腹度回復開始
effect @a[team=!GM] minecraft:saturation 99999 255 true
#即時回復開始
effect @a[team=!GM] minecraft:instant_health 99999 30 true
#ゲーム終了音
playsound minecraft:entity.cat.ambient master @a ~0 ~0 ~0 1.0 1.0 1.0