--TODO--

スケ剣販売にも耐久1つけたい
狂人アイテムと不死身アイテムが同時に消費される問題(御子貝報告->確認済み) -> ぶっちゃけ狂人は不死身使っても意味ないから大丈夫かも？でも直せるなら直したい。
占いアイテム持ってる人テレポートが、一番近い人がテレポートするのやばない問題。

--コマンド--

---サーバ上ファンクション(.mcfunction)---
ファイル座標
人狼MAP
/home/hsasheep/Minecraft/Server/Spigot/Spigot_1.12.2/spigot/WentworthMansion/data/functions/werewolf/

テストファイル場所
Minecraft/Server/Spigot/Spigot_1.12.2/spigot/WentworthMansion/data/functions/werewolf/timer/test.mcfunction

テスト実行コマンド(ゲーム内コマブロかコマンド欄に打って実行)
/function werewolf:timer/test

functionファイル書き換え後リロード
/reload

---GM以外アドベンチャーモードに---
/gamemode 2 @a[team=!GM]

---チーム解散---
/scoreboard teams empty V
/scoreboard teams empty W

---役職タグ確認・初期化---
/scoreboard players tag @a list
/scoreboard players tag @a remove seer
/scoreboard players tag @a remove madman


--今のところの召喚コマンドをまとめたやつ--
村人回転
/tp @e[r=5,type=Villager] ~ ~ ~ 0 ~
/tp @e[r=5,type=Villager] ~ ~ ~ 90 ~
/tp @e[r=5,type=Villager] ~ ~ ~ 180 ~

村人消去(3M,1人)
/kill @e[type=villager,c=1,r=3]

--残りの人陣営表示--
/tellraw @a[m=sp] [{"text":"--------------------------------------\n","color":"white","bold":true},
                   {"text":"村人   ： ","color":"dark_green"},
                   {"selector":"@a[team=V]","color":"dark_green","bold":true},
                   {"text":"\n"},
                   {"text":"人狼   ： ","color":"red"},
                   {"selector":"@a[team=W]","color":"red","bold":true},
                   {"text":"\n"},
                   {"text":"占い師 ： ","color":"blue"},
                   {"selector":"@a[tag=seer]","color":"blue","bold":true},
                   {"text":"\n"},
                   {"text":"狂人   ： ","color":"gold"},
                   {"selector":"@a[tag=madman]","color":"gold","bold":true},
                   {"text":"\n--------------------------------------\n","color":"white","bold":true}]

/tellraw @a[m=sp] [{"text":"--------------------------------------\n","color":"white","bold":true},{"text":"村人   ： ","color":"dark_green"},{"selector":"@a[team=V]","color":"dark_green","bold":true},{"text":"\n"},{"text":"人狼   ： ","color":"red"},{"selector":"@a[team=W]","color":"red","bold":true},{"text":"\n"},{"text":"占い師 ： ","color":"blue"},{"selector":"@a[tag=seer]","color":"blue","bold":true},{"text":"\n"},{"text":"狂人   ： ","color":"gold"},{"selector":"@a[tag=madman]","color":"gold","bold":true},{"text":"\n--------------------------------------\n","color":"white","bold":true}]


---攻撃アイテムショップ---
人狼の証必要
/summon Villager ~ ~ ~ {Rotation:[-90f,0f],Tags:["shop"],Profession:3,CustomName:"武器商人",Career:2,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Invulnerable:1,Attributes:[{Name:"generic.knockbackResistance",Base:"1f"},{Name:"generic.movementSpeed",Base:"0f"},{Name:"generic.maxHealth",Base:99999}],Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:2},maxUses:9999999,sell:{id:"minecraft:bow",Count:1,Damage:384,tag:{HideFlags:63,ench:[{id:71s,lvl:1},{id:48,lvl:9999}],display:{Name:"最強の弓",Lore:["つよい。","一撃。","一発しか打てない。","所持者が死んだとき消滅する。"]}}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:2},maxUses:9999999,sell:{id:"minecraft:arrow",Count:1},rewardExp:false},{buy:{id:"minecraft:emerald",Count:3},buyB:{id:"minecraft:string",Count:1b,tag:{display:{Name:"人狼の証"}}},maxUses:9999999,sell:{id:"minecraft:stone_axe",Count:1,Damage:131,tag:{HideFlags:63,ench:[{id:71s,lvl:1}],AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:9999,Operation:0,UUIDLeast:715534,UUIDMost:694996}],display:{Name:"人狼の斧",Lore:["人狼のみ購入可。つよい。","一撃。","ただし一回使い切りタイプ。","所持者が死んだとき消滅する。","実は人狼以外も使用可。"]}}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:4},maxUses:9999999,sell:{id:"minecraft:wooden_sword",Count:1,tag:{HideFlags:63,display:{Name:"スケ狩り剣",Lore:["誰でも使える。","スケルトンに大ダメージ。","ちなみにプレイヤーには","ただの木の剣のダメージしかない。"]},ench:[{id:17,lvl:5}]}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:1},maxUses:9999999,sell:{id:"minecraft:cooked_beef",Count:5},rewardExp:false}]}}
人狼の証要らない
/summon Villager ~ ~ ~ {Rotation:[-90f,0f],Tags:["shop"],Profession:3,CustomName:"武器商人",Career:2,CareerLevel:42,CanPickUpLoot:0b,PersistenceRequired:1b,NoAI:1b,Silent:1b,Invulnerable:1b,Attributes:[{Name:"generic.knockbackResistance",Base:"1f"},{Name:"generic.movementSpeed",Base:"0f"},{Name:"generic.maxHealth",Base:99999}],Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:2},maxUses:9999999,sell:{id:"minecraft:bow",Count:1,Damage:384,tag:{HideFlags:63,ench:[{id:71s,lvl:1},{id:48,lvl:9999}],display:{Name:"最強の弓",Lore:["つよい。","一撃。","一発しか打てない。","所持者が死んだとき消滅する。"]}}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:2},maxUses:9999999,sell:{id:"minecraft:arrow",Count:1},rewardExp:false},{buy:{id:"minecraft:emerald",Count:3},maxUses:9999999,sell:{id:"minecraft:stone_axe",Count:1,Damage:131,tag:{HideFlags:63,ench:[{id:71s,lvl:1}],AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:9999,Operation:0,UUIDLeast:715534,UUIDMost:694996}],display:{Name:"人狼の斧",Lore:["人狼のみ購入可。","つよい。一撃。","ただし一回使い切りタイプ。","所持者が死んだとき消滅する。","実は人狼以外も使用可。"]}}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:4},maxUses:9999999,sell:{id:"minecraft:wooden_sword",Count:1,tag:{HideFlags:63,display:{Name:"スケ狩り剣",Lore:["誰でも使える。","スケルトンに大ダメージ。","ちなみにプレイヤーには","ただの木の剣のダメージしかない。"]},ench:[{id:17,lvl:5}]}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:1},maxUses:9999999,sell:{id:"minecraft:cooked_beef",Count:5},rewardExp:false}]}}

人狼の証必要、即死ポーション追加
/summon Villager ~ ~ ~ {Rotation:[-90f,0f],Tags:["shop"],Profession:3,CustomName:"武器商人",Career:2,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Invulnerable:1,Attributes:[{Name:"generic.knockbackResistance",Base:"1f"},{Name:"generic.movementSpeed",Base:"0f"},{Name:"generic.maxHealth",Base:99999}],Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:4},maxUses:9999999,sell:{id:"minecraft:wooden_sword",Count:1,tag:{HideFlags:63,display:{Name:"スケ狩り剣",Lore:["誰でも使える。","スケルトンに大ダメージ。","ちなみにプレイヤーには","ただの木の剣のダメージしかない。"]},ench:[{id:17,lvl:5}]}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:2},maxUses:9999999,sell:{id:"minecraft:bow",Count:1,Damage:384,tag:{HideFlags:63,ench:[{id:71s,lvl:1},{id:48,lvl:9999}],display:{Name:"最強の弓",Lore:["つよい。","一撃。","一発しか打てない。","所持者が死んだとき消滅する。"]}}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:2},maxUses:9999999,sell:{id:"minecraft:arrow",Count:1,tag:{display:{Lore:["普通の矢。","弓とセットで1発撃てる。"]}}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:4},maxUses:9999999,sell:{id:"minecraft:splash_potion",Count:1,tag:{display:{Name:"即死ポーション",Lore:["その名の通り。つよい。","自爆に注意。","味方にも当たるよ。"]},CustomPotionEffects:[{Id:7,Amplifier:9999,Duration:10}]}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:3},buyB:{id:"minecraft:string",Count:1b,tag:{display:{Name:"人狼の証"}}},maxUses:9999999,sell:{id:"minecraft:stone_axe",Count:1,Damage:131,tag:{HideFlags:63,ench:[{id:71s,lvl:1}],AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:9999,Operation:0,UUIDLeast:715534,UUIDMost:694996}],display:{Name:"人狼の斧",Lore:["人狼のみ購入可。つよい。","一撃。","ただし一回使い切りタイプ。","所持者が死んだとき消滅する。","実は人狼以外も使用可。"]}}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:1},maxUses:9999999,sell:{id:"minecraft:cooked_beef",Count:5},rewardExp:false}]}}

---雑貨アイテムショップ---
占い師の証必要
/summon Villager ~ ~ ~ {Rotation:[-90f,0f],Tags:["shop"],Profession:1,CustomName:"雑貨商人",Career:2,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Invulnerable:1,Attributes:[{Name:"generic.knockbackResistance",Base:"1f"},{Name:"generic.movementSpeed",Base:"0f"},{Name:"generic.maxHealth",Base:99999}],Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:1},maxUses:9999999,sell:{id:"minecraft:cooked_beef",Count:5},rewardExp:false},{buy:{id:"minecraft:emerald",Count:4},maxUses:9999999,sell:{id:"minecraft:written_book",Count:1,tag:{tag:"undying_oneday",pages:["[\"\",{\"text\":\"\\u4f7f\\u3044\\u65b9\\uff1a\",\"bold\":true,\"color\":\"dark_green\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"(\\u958b\\u3044\\u305f\\u3060\\u3051\\u3067\\u306f\\u4f7f\\u7528\\u3055\\u308c\\u307e\\u305b\\u3093\\u3002)\",\"color\":\"red\"},{\"text\":\"\\n\\u4e0b\\u306e\\u6587\\u5b57\\u3092\\u30af\\u30ea\\u30c3\\u30af\\u3057\\u3066\\u4f7f\\u7528\\u3002\\n\\u30af\\u30ea\\u30c3\\u30af\\u3059\\u308b\\u307e\\u3067\\u306f\\u6d88\\u3048\\u306a\\u3044\\u3002\\n\\n\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\n\",\"color\":\"reset\"},{\"text\":\"\\u660e\\u65e5\\u306e\\u671d\\u307e\\u3067\\u4e0d\\u6b7b\\u8eab\\u306b\\u306a\\u308b\",\"underlined\":true,\"color\":\"blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tp @p 49 61 206\"}},{\"text\":\"\\n\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\",\"color\":\"reset\"}]"],title:"不死身の書-簡単1DAYタイプ-",author:"https://hsa12.net/minecraft/",display:{Lore:["「不死身の書-簡単1DAYタイプ-」と書いてある。","どうやらそういうことらしい。","使い切り。","人狼も使えるが不死身にはならない。"]}}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:4},maxUses:9999999,sell:{id:"minecraft:potion",Count:1,tag:{tag:"invisibility_potion_30",display:{Name:"透明化ポーション",Lore:["誰でも使える。ただし30秒しか効果がない。"]},CustomPotionEffects:[{Id:14,Amplifier:0,Duration:600,ShowParticles:0b}]}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:5},buyB:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:"占い師の証"}}},maxUses:9999999,sell:{id:"minecraft:blaze_rod",Count:1,tag:{tag:"divination_key",display:{Name:"占いの鍵",Lore:["誰でも使える。","占いたい人のチェストの前まで行き、","足元のボタンを押すと消費して占える。","今のところいつでも使える。"]}}},rewardExp:false}]}}
占い師の証要らない
/summon Villager ~ ~ ~ {Rotation:[-90f,0f],Tags:["shop"],Profession:1,CustomName:"雑貨商人",Career:2,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Invulnerable:1,Attributes:[{Name:"generic.knockbackResistance",Base:"1f"},{Name:"generic.movementSpeed",Base:"0f"},{Name:"generic.maxHealth",Base:99999}],Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:1},maxUses:9999999,sell:{id:"minecraft:cooked_beef",Count:5},rewardExp:false},{buy:{id:"minecraft:emerald",Count:4},maxUses:9999999,sell:{id:"minecraft:written_book",Count:1,tag:{tag:"undying_oneday",pages:["[\"\",{\"text\":\"\\u4f7f\\u3044\\u65b9\\uff1a\",\"bold\":true,\"color\":\"dark_green\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"(\\u958b\\u3044\\u305f\\u3060\\u3051\\u3067\\u306f\\u4f7f\\u7528\\u3055\\u308c\\u307e\\u305b\\u3093\\u3002)\",\"color\":\"red\"},{\"text\":\"\\n\\u4e0b\\u306e\\u6587\\u5b57\\u3092\\u30af\\u30ea\\u30c3\\u30af\\u3057\\u3066\\u4f7f\\u7528\\u3002\\n\\u30af\\u30ea\\u30c3\\u30af\\u3059\\u308b\\u307e\\u3067\\u306f\\u6d88\\u3048\\u306a\\u3044\\u3002\\n\\n\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\n\",\"color\":\"reset\"},{\"text\":\"\\u660e\\u65e5\\u306e\\u671d\\u307e\\u3067\\u4e0d\\u6b7b\\u8eab\\u306b\\u306a\\u308b\",\"underlined\":true,\"color\":\"blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tp @p 49 61 206\"}},{\"text\":\"\\n\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\",\"color\":\"reset\"}]"],title:"不死身の書-簡単1DAYタイプ-",author:"https://hsa12.net/minecraft/",display:{Lore:["「不死身の書-簡単1DAYタイプ-」と書いてある。","どうやらそういうことらしい。","使い切り。","人狼も使えるが不死身にはならない。"]}}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:4},maxUses:9999999,sell:{id:"minecraft:potion",Count:1,tag:{tag:"invisibility_potion_30",display:{Name:"透明化ポーション",Lore:["誰でも使える。ただし30秒しか効果がない。"]},CustomPotionEffects:[{Id:14,Amplifier:0,Duration:600,ShowParticles:0b}]}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:5},maxUses:9999999,sell:{id:"minecraft:blaze_rod",Count:1,tag:{tag:"divination_key",display:{Name:"占いの鍵",Lore:["誰でも使える。","占いたい人のチェストの前まで行き、","足元のボタンを押すと消費して占える。","今のところいつでも使える。"]}}},rewardExp:false}]}}

占い師の証要らない、新型不死身アイテム、人狼への贈り物あり
/summon Villager ~ ~ ~ {Rotation:[-90f,0f],Tags:["shop"],Profession:1,CustomName:"雑貨商人",Career:2,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Invulnerable:1,Attributes:[{Name:"generic.knockbackResistance",Base:"1f"},{Name:"generic.movementSpeed",Base:"0f"},{Name:"generic.maxHealth",Base:99999}],Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:1},maxUses:9999999,sell:{id:"minecraft:cooked_beef",Count:5},rewardExp:false},{buy:{id:"minecraft:emerald",Count:4},maxUses:9999999,sell:{id:"minecraft:nether_star",Count:1,tag:{display:{Name:"割るだけ簡単！不死身1Dayタイプ",Lore:["村人用アイテム。狂人は使えない。","手にもって右クリックで使用する。","夜の間しか使えず、翌日まで効果がある。","これ何でできてるん…？"]}}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:4},maxUses:9999999,sell:{id:"minecraft:potion",Count:1,tag:{tag:"invisibility_potion_30",display:{Name:"透明化ポーション",Lore:["誰でも使える。ただし30秒しか効果がない。"]},CustomPotionEffects:[{Id:14,Amplifier:0,Duration:600,ShowParticles:0b}]}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:5},maxUses:9999999,sell:{id:"minecraft:blaze_rod",Count:1,tag:{tag:"divination_key",display:{Name:"占いの鍵",Lore:["誰でも使える。","占いたい人のチェストの前まで行き、","足元のボタンを押すと消費して占える。","今のところいつでも使える。"]}}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:5},maxUses:9999999,sell:{id:"minecraft:bone",Count:1,tag:{display:{Name:"人狼への贈り物",Lore:["狂人が使用するアイテム。","右クリックで使用。","使った狂人と人狼は","お互いの名前が表示される。","狂人以外が使用しても効果はない。"]}}},rewardExp:false}]}}

占い師の証要らない、ワープ、不死身アイテム、人狼への贈り物あり
/summon Villager ~ ~ ~ {Rotation:[-90f,0f],Tags:["shop"],Profession:1,CustomName:"雑貨商人",Career:2,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Invulnerable:1,Attributes:[{Name:"generic.knockbackResistance",Base:"1f"},{Name:"generic.movementSpeed",Base:"0f"},{Name:"generic.maxHealth",Base:99999}],Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:1},maxUses:9999999,sell:{id:"minecraft:cooked_beef",Count:5},rewardExp:false},{buy:{id:"minecraft:emerald",Count:3},maxUses:9999999,sell:{id:"minecraft:ender_pearl",Count:2,tag:{display:{Name:"ワープアイテム",Lore:["その名の通り。","投げて着弾地点に飛ぶ。","攻めに守りに使えそう。","移動後ダメージ注意。","エリア外に出ないでね…"]},CustomPotionEffects:[{Id:7,Amplifier:9999,Duration:10}]}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:4},maxUses:9999999,sell:{id:"minecraft:potion",Count:1,tag:{tag:"invisibility_potion_30",display:{Name:"透明化ポーション",Lore:["誰でも使える。","ただし30秒しか効果がない。"]},CustomPotionEffects:[{Id:14,Amplifier:0,Duration:600,ShowParticles:0b}]}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:4},maxUses:9999999,sell:{id:"minecraft:nether_star",Count:1,tag:{display:{Name:"割るだけ簡単！不死身1Dayタイプ",Lore:["村人用アイテム。","狂人、人狼は使っても効果がない。","手にもって右クリックで使用する。","夜の間しか使えず、翌日まで効果がある。","これ何でできてるん…？"]}}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:5},maxUses:9999999,sell:{id:"minecraft:blaze_rod",Count:1,tag:{tag:"divination_key",display:{Name:"占いの鍵",Lore:["誰でも使える。","占いたい人のチェストの前まで行き、","足元のボタンを押すと消費して占える。","今のところいつでも使える。"]}}},rewardExp:false},{buy:{id:"minecraft:emerald",Count:5},maxUses:9999999,sell:{id:"minecraft:bone",Count:1,tag:{display:{Name:"人狼への贈り物",Lore:["狂人が使用するアイテム。","右クリックで使用。","使った狂人と人狼は","お互いの名前が表示される。","これ何の骨…？"]}}},rewardExp:false}]}}



--ゲーム中コマンド試作--

---狂人用コマンド---
/execute @a[score_hasClickItem_min=1,score_hasClickItem=1,score_clicked_min=1] ~ ~ ~ particle explode ~-1 ~-1 ~-1 1 1 1 1.0 1000
/title @a[score_hasClickItem_min=1,score_hasClickItem=1,score_clicked_min=1] times 5 15 5
/title @a[tag=madman,score_hasClickItem_min=1,score_hasClickItem=1,score_clicked_min=1] title {"text":"人狼に贈り物をした！","color":"red","bold":"true"}
/tellraw @a[tag=madman,score_hasClickItem_min=1,score_hasClickItem=1,score_clicked_min=1] [{"text":"--------------------------------------\n","color":"red","bold":true},{"text":"人狼 ： ","color":"red"},{"selector":"@a[team=W]","color":"red","bold":true},{"text":"\n--------------------------------------\n","color":"red","bold":true}]
/execute @a[tag=madman,score_hasClickItem_min=1,score_hasClickItem=1,score_clicked_min=1] ~ ~ ~ tellraw @a[team=W] [{"text":"狂人の ","color":"red","bold":true},{"selector":"@a[tag=madman,score_hasClickItem_min=1,score_hasClickItem=1,score_clicked_min=1]","color":"red","bold":true},{"text":" が骨を渡してきた。","color":"red","bold":true}]
/clear @a[score_hasClickItem_min=1,score_hasClickItem=1,score_clicked_min=1] minecraft:bone -1 1 {display:{Name:"人狼への贈り物"}}

---村人用1day不死身コマンド---
/tellraw @a[team=V,tag=!madman,score_hasClickItem_min=1,score_hasClickItem=2,score_clicked_min=1] [{"text":"明日になるまで無敵になった気がする…","color":"gold","bold":true}]
/effect @a[team=V,tag=!madman,score_hasClickItem_min=1,score_hasClickItem=2,score_clicked_min=1] minecraft:resistance 32768 255 true
/clear @a[score_hasClickItem_min=1,score_hasClickItem=2,score_clicked_min=1] minecraft:nether_star -1 1 {display:{Name:"割るだけ簡単！不死身1Dayタイプ"}}

---アイテム使用時用エフェクトコマンド---
ダメージ無効(耐性)
/effect HsaSheep minecraft:instant_health 999999 100

---アイテム使用以外のエフェクトコマンド---
体力追加(2列)
/effect HsaSheep minecraft:health_boost 999999 4

--販売員コマンド試作--

いる場所
攻撃
35 63 151

/summonコマンドNBTタグ
常に名前表示：CustomNameVisible:1

/summon Villager ~ ~ ~ 
{Rotation:[-90f,0f],Tags:["shop"],Profession:3,CustomName:"武器商人",Career:2,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Invulnerable:1,Attributes:[
    {Name:"generic.knockbackResistance",Base:"1f"},{Name:"generic.movementSpeed",Base:"0f"},{Name:"generic.maxHealth",Base:99999}],
    Offers:{Recipes:[
        {buy:{id:"minecraft:emerald",Count:4},maxUses:9999999,sell:{id:"minecraft:wooden_sword",Count:1,tag:{HideFlags:63,display:{Name:"スケ狩り剣",Lore:["誰でも使える。","スケルトンに大ダメージ。","ちなみにプレイヤーには","ただの木の剣のダメージしかない。"]},ench:[{id:17,lvl:5}]}},rewardExp:false},
        {buy:{id:"minecraft:emerald",Count:2},maxUses:9999999,sell:{id:"minecraft:bow",Count:1,Damage:384,tag:{HideFlags:63,ench:[{id:71s,lvl:1},{id:48,lvl:9999}],display:{Name:"最強の弓",Lore:["つよい。","一撃。","一発しか打てない。","所持者が死んだとき消滅する。"]}}},rewardExp:false},
        {buy:{id:"minecraft:emerald",Count:2},maxUses:9999999,sell:{id:"minecraft:arrow",Count:1,tag:{display:{Lore:["普通の矢。","弓とセットで1発撃てる。"]}}},rewardExp:false},
        {buy:{id:"minecraft:emerald",Count:4},maxUses:9999999,sell:{id:"minecraft:splash_potion",Count:1,tag:{display:{Name:"即死ポーション",Lore:["その名の通り。つよい。","自爆に注意。","味方にも当たるよ。"]},CustomPotionEffects:[{Id:7,Amplifier:9999,Duration:10}]}},rewardExp:false},
        {buy:{id:"minecraft:emerald",Count:3},buyB:{id:"minecraft:string",Count:1b,tag:{display:{Name:"人狼の証"}}},maxUses:9999999,sell:{id:"minecraft:stone_axe",Count:1,Damage:131,tag:{HideFlags:63,ench:[{id:71s,lvl:1}],AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:9999,Operation:0,UUIDLeast:715534,UUIDMost:694996}],display:{Name:"人狼の斧",Lore:["人狼のみ購入可。つよい。","一撃。","ただし一回使い切りタイプ。","所持者が死んだとき消滅する。","実は人狼以外も使用可。"]}}},rewardExp:false},
        {buy:{id:"minecraft:emerald",Count:1},maxUses:9999999,sell:{id:"minecraft:cooked_beef",Count:5},rewardExp:false}
        ]}}

いる場所
補助
35 63 149


/summon Villager ~ ~ ~ 
{Rotation:[-90f,0f],Tags:["shop"],Profession:1,CustomName:"雑貨商人",Career:2,CareerLevel:42,CanPickUpLoot:0,PersistenceRequired:1,NoAI:1,Silent:1,Invulnerable:1,Attributes:[
    {Name:"generic.knockbackResistance",Base:"1f"},{Name:"generic.movementSpeed",Base:"0f"},{Name:"generic.maxHealth",Base:99999}],
    Offers:{Recipes:[
        {buy:{id:"minecraft:emerald",Count:1},maxUses:9999999,sell:{id:"minecraft:cooked_beef",Count:5},rewardExp:false},
        {buy:{id:"minecraft:emerald",Count:3},maxUses:9999999,sell:{id:"minecraft:ender_pearl",Count:2,tag:{display:{Name:"ワープアイテム",Lore:["その名の通り。","投げて着弾地点に飛ぶ。","攻めに守りに使えそう。","移動後ダメージ注意。","エリア外に出ないでね…"]},CustomPotionEffects:[{Id:7,Amplifier:9999,Duration:10}]}},rewardExp:false},
        {buy:{id:"minecraft:emerald",Count:4},maxUses:9999999,sell:{id:"minecraft:potion",Count:1,tag:{tag:"invisibility_potion_30",display:{Name:"透明化ポーション",Lore:["誰でも使える。","ただし30秒しか効果がない。"]},CustomPotionEffects:[{Id:14,Amplifier:0,Duration:600,ShowParticles:0b}]}},rewardExp:false},
        {buy:{id:"minecraft:emerald",Count:4},maxUses:9999999,sell:{id:"minecraft:nether_star",Count:1,tag:{display:{Name:"割るだけ簡単！不死身1Dayタイプ",Lore:["村人用アイテム。","狂人、人狼は使っても効果がない。","手にもって右クリックで使用する。","夜の間しか使えず、翌日まで効果がある。","これ何でできてるん…？"]}}},rewardExp:false},
        {buy:{id:"minecraft:emerald",Count:5},maxUses:9999999,sell:{id:"minecraft:blaze_rod",Count:1,tag:{tag:"divination_key",display:{Name:"占いの鍵",Lore:["誰でも使える。","占いたい人のチェストの前まで行き、","足元のボタンを押すと消費して占える。","今のところいつでも使える。"]}}},rewardExp:false},
        {buy:{id:"minecraft:emerald",Count:5},maxUses:9999999,sell:{id:"minecraft:bone",Count:1,tag:{display:{Name:"人狼への贈り物",Lore:["狂人が使用するアイテム。","右クリックで使用。","使った狂人と人狼は","お互いの名前が表示される。","これ何の骨…？"]}}},rewardExp:false}
        ]}}

占いの鍵　証必要版
{buy:{id:"minecraft:emerald",Count:5},buyB:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:"占い師の証"}}},maxUses:9999999,sell:{id:"minecraft:blaze_rod",Count:1,tag:{tag:"divination_key",display:{Name:"占いの鍵",Lore:["誰でも使える。","占いたい人のチェストの前まで行き、","足元のボタンを押すと消費して占える。","今のところいつでも使える。"]}}},rewardExp:false},

--アイテム試作--

---デバック、管理用アイテム---

チェスト、ドロッパーの鍵：/give @p minecraft:tripwire_hook 1 0 {display:{Name:"Werewolf_Key",Lore:["人狼ゲームGM用。","ロックされたチェストなどを開く際に使う。"]}}

---プレイヤー用設定アイテム---

白羊毛設置可看板：/give @a minecraft:sign 16 0 {display:{Name:"占い部屋用 表札",Lore:["ゲーム設定時間用アイテム。","チェスト奥の壁にだけつけられる。","自分の名前(アカウント名)を書こう。","余ったものは持っていればOK(GMが消します)。","消えなかったら教えてください…"]},CanPlaceOn:["minecraft:wool"]}
看板破壊可能アイテム：/give @a minecraft:wooden_hoe 1 0 {display:{Name:"占い部屋用 看板破壊アイテム",Lore:["ゲーム設定時間用アイテム。","間違ってつけたり、書きミスした看板を外せる。","他人のを外したりしないでね…","持っていればOK(GMが消します)。","消えなかったら教えてください…"]},CanDestroy:["minecraft:wall_sign"]}
(上記二点の消去コマンド)


---販売：攻撃アイテム---

弓：エメラルド2
矢：エメラルド2
人狼の斧:エメラルド3
->買うときに必要　糸(Name:人狼の証)
助狩りの剣：エメラルド4

一撃弓(ベース。壊れない。)
/give @p minecraft:bow 1 0 {ench:[{id:71s,lvl:1},{id:34,lvl:9999},{id:48,lvl:9999}],HideFlags:63,display:{Name:"最強の弓",Lore:["つよい。","一撃。","通常使用では壊れない保障付き。","所持者が死んだとき消滅する。"]}}
一撃弓(普通に壊れる。)
/give @p minecraft:bow 1 0 {HideFlags:63,ench:[{id:71s,lvl:1},{id:48,lvl:9999}],display:{Name:"最強の弓",Lore:["つよい。","一撃。","ちなみに普通に壊れる。","所持者が死んだとき消滅する。"]}}
一撃弓(使い切りタイプ。)
/give @p minecraft:bow 1 384 {HideFlags:63,ench:[{id:71s,lvl:1},{id:48,lvl:9999}],display:{Name:"最強の弓",Lore:["つよい。","一撃。","一発しか打てない。","所持者が死んだとき消滅する。"]}}

普通の矢
/give @p minecraft:arrow 1 0

人狼の斧(使い切りタイプ。)
/give @p minecraft:stone_axe 1 131 {ench:[{id:71s,lvl:1}],HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:9999,Operation:0,UUIDLeast:715534,UUIDMost:694996}],display:{Name:"人狼の斧",Lore:["人狼のみ購入可。","つよい。一撃。","ただし一回使い切りタイプ。","所持者が死んだとき消滅する。","実は人狼以外も使用可。"]}}
人狼の証
/give @p minecraft:string 1 0 {display:{Name:"人狼の証",Lore:["人狼専用アイテムを買うときに必要。"]}}

スケルトン狩りの剣
/give @p minecraft:wooden_sword 1 0 {HideFlags:63,display:{Name:"スケ狩り剣",Lore:["誰でも使える。","スケルトンに大ダメージ。","ちなみにプレイヤーには","ただの木の剣のダメージしかない。"]},ench:[{id:17,lvl:5}]}

---販売：雑貨アイテム---

ステーキ5：エメラルド1
1日不死身:エメラルド4
透明化ポーション：エメラルド4
占い：エメラルド5
->買うときに必要 エンダーパール(Name:占い師の証)
人狼への贈り物：エメラルド5

ステーキ(五個セット)
/give @p minecraft:cooked_beef 5 0

1Day不死身
不死身の書(昼でも使える。)
/give @p minecraft:written_book 1 0 {tag:"undying_oneday",echo:[{id:71s,lvl:1}],pages:["[\"\",{\"text\":\"\\u4f7f\\u3044\\u65b9\\uff1a\",\"bold\":true,\"color\":\"dark_green\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"(\\u958b\\u3044\\u305f\\u3060\\u3051\\u3067\\u306f\\u4f7f\\u7528\\u3055\\u308c\\u307e\\u305b\\u3093\\u3002)\",\"color\":\"red\"},{\"text\":\"\\n\\u4e0b\\u306e\\u6587\\u5b57\\u3092\\u30af\\u30ea\\u30c3\\u30af\\u3057\\u3066\\u4f7f\\u7528\\u3002\\n\\u30af\\u30ea\\u30c3\\u30af\\u3059\\u308b\\u307e\\u3067\\u306f\\u6d88\\u3048\\u306a\\u3044\\u3002\\n\\n\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\n\",\"color\":\"reset\"},{\"text\":\"\\u660e\\u65e5\\u306e\\u671d\\u307e\\u3067\\u4e0d\\u6b7b\\u8eab\\u306b\\u306a\\u308b\",\"underlined\":true,\"color\":\"blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tp @p 49 61 206\"}},{\"text\":\"\\n\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\\u2652\",\"color\":\"reset\"}]"],title:"不死身の書-簡単1DAYタイプ-",author:"https://hsa12.net/minecraft/",display:{Lore:["「不死身の書-簡単1DAYタイプ-」と書いてある。","どうやらそういうことらしい。","1回使い切り。","人狼も使えるが不死身にはならない。"]}}
不死身アイテム(夜だけ使える。)
/give @p minecraft:nether_star 1 0 {display:{Name:"割るだけ簡単！不死身1Dayタイプ",Lore:["村人用アイテム。狂人は使えない。","手にもって右クリックで使用する。","夜の間しか使えず、翌日まで効果がある。","いったいどんな仕組みなんだろう…？"]}}

即死ポーション
/give @p minecraft:splash_potion 1 0 {display:{Name:"即死ポーション",Lore:["その名の通り。自爆に注意。"]},CustomPotionEffects:[{Id:7,Amplifier:9999,Duration:10}]}

透明化ポーション(30s)
/give @p minecraft:potion 1 0 {display:{Name:"透明化ポーション",Lore:["誰でも使える。ただし30秒しか効果がない。"]},CustomPotionEffects:[{Id:14,Amplifier:0,Duration:600,ShowParticles:0b}]}

占いの鍵
/give @p minecraft:blaze_rod 1 0 {display:{Name:"占いの鍵",Lore:["誰でも使える。今のところいつでも使える。"]}}
占い師の証
/give @p minecraft:ender_pearl 1 0 {display:{Name:"占い師の証",Lore:["占い師専用アイテムを買うときに必要。","ちなみに普通に投げても使える。","落下死に気を付けてね。"]}}

人狼への贈り物
/give @p minecraft:bone 1 0 {display:{Name:"人狼への贈り物",Lore:["狂人が使用するアイテム。","右クリックで使用。","使った狂人と人狼は","お互いの名前が表示される。","狂人以外が使用しても効果はない。"]}}

---配布アイテム---

GameMaster本
/give @a[team=GM] written_book 1 0 {pages:["[\"\",{\"text\":\"\\u30b2\\u30fc\\u30e0\\u30de\\u30b9\\u30bf\\u30fc\\u7528\\u30b3\\u30de\\u30f3\\u30c9\\u96c6\",\"bold\":true,\"underlined\":true,\"color\":\"blue\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u79fb\\u52d5\\u30b3\\u30de\\u30f3\\u30c9\\uff1a\",\"bold\":true,\"underlined\":true,\"color\":\"dark_green\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\">>> \\u30b3\\u30de\\u30f3\\u30c9\\u90e8\\u5c4b\\u3078 <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tp @p 25 60 218\"}},{\"text\":\"\\n\",\"color\":\"red\"},{\"text\":\">>> \\u30b3\\u30de\\u30d6\\u30ed\\u90e8\\u5c4b\\u5c4b\\u4e0a\\u3078 <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tp @p 43 71 218\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\">>> \\u5c4b\\u6577\\u524d\\u5e83\\u5834\\u3078 <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tp @p 49 70 151\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\">>> \\u5c4b\\u6577 B\\u968e\\u3078 <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tp @p 70 57 150\"}},{\"text\":\"\\n\",\"color\":\"red\"},{\"text\":\">>> \\u5c4b\\u6577 1\\u968e\\u3078 <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tp @p 93 66 153\"}},{\"text\":\"\\n\",\"color\":\"red\"},{\"text\":\">>> \\u5c4b\\u6577 2\\u968e\\u3078 <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tp @p 78 73 150\"}}]","[\"\",{\"text\":\"\\u30b2\\u30fc\\u30e0\\u30b3\\u30de\\u30f3\\u30c9\\uff1a\",\"bold\":true,\"underlined\":true,\"color\":\"dark_green\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\">>> \\u3052\\u30fc\\u3080\\u3059\\u305f\\u30fc\\u3068 <<<\",\"bold\":true,\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/setblock 29 62 231 minecraft:redstone_block 0\"}},{\"text\":\"\\n\",\"color\":\"reset\",\"bold\":true},{\"text\":\">>> \\u304d\\u3087\\u3046\\u3067\\u304a\\u308f\\u308a <<<\",\"bold\":true,\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/setblock 29 62 225 minecraft:redstone_block 0\"}},{\"text\":\"\\n\",\"color\":\"reset\",\"bold\":true},{\"text\":\">>> \\u3052\\u30fc\\u3080\\u3061\\u3085\\u3046\\u3060\\u3093 <<<\",\"bold\":true,\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/setblock 52 60 230 minecraft:redstone_block 0\"}},{\"text\":\"\\n\\n\",\"color\":\"reset\",\"bold\":true},{\"text\":\">>> \\u30bf\\u30a4\\u30de\\u30fc\\u985e\\u521d\\u671f\\u5316 <<<\",\"bold\":true,\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/kill @e[tag=sys]\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"\\u203b\\u3053\\u3053\\u304b\\u3089\\u4e0b\\u306fGM\\u306f\\u9664\\u5916\\u203b\",\"color\":\"gold\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\">>> \\u5168\\u54e1\\u6751\\u4ebaBOX\\u3078 <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tp @a[team=!GM] 49 61 206\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\">>> \\u4eba\\u72fc\\u3092\\u4eba\\u72fcBOX\\u3078 <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tp @a[team=W] 55 61 206\"}},{\"text\":\"\\n\",\"color\":\"red\"},{\"text\":\">>> \\u5168\\u54e1\\u30b9\\u30bf\\u30fc\\u30c8\\u5730\\u70b9\\u3078 <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tp @a[team=!GM] 49 70 151\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\">>> \\u5168\\u54e1Item\\u30af\\u30ea\\u30a2 <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/clear @a[team=!GM]\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"\\u203b\\u6ce8\\u610f\\uff1a\\u3053\\u306e\\u672c\\u3082\\u6d88\\u53bb\\u5bfe\\u8c61\\u3002\",\"color\":\"gold\"}]","[\"\",{\"text\":\"\\u8aac\\u660e\\uff1a\",\"bold\":true,\"underlined\":true,\"color\":\"dark_green\"},{\"text\":\"\\n\\u65e5\\u6570\\u3084\\u6642\\u9593\\u306f\\u30b3\\u30de\\u30f3\\u30c9\\u90e8\\u5c4b\\n\\u6c34\\u8272\\u306e\\u7f8a\\u6bdb\\u30d6\\u30ed\\u30c3\\u30af\\u4e0b\\u3067\\u8a2d\\u5b9a\\n\\u8a73\\u3057\\u304f\\u306f\\u30b3\\u30de\\u30d6\\u30ed\\u306e\\u770b\\u677f\\u3092\\u78ba\\u8a8d\",\"color\":\"reset\"}]","[\"\",{\"text\":\"\\u30c1\\u30fc\\u30e0\\u30b3\\u30de\\u30f3\\u30c9\\uff1a\",\"bold\":true,\"underlined\":true,\"color\":\"dark_green\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\">>> \\u30c1\\u30fc\\u30e0\\u30ea\\u30b9\\u30c8\\u8868\\u793a <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard teams list\"}},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\">>> \\u81ea\\u5206\\u3092GM\\u30c1\\u30fc\\u30e0\\u3078 <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard teams join GM @p\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\">>> \\u81ea\\u5206\\u3092\\u7121\\u6240\\u5c5e\\u3078 <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard teams leave @p\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"\\u203b\\u3053\\u3053\\u304b\\u3089\\u4e0b\\u306fGM\\u306f\\u9664\\u5916\\u203b\",\"color\":\"gold\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\">>> \\u5168\\u54e1\\u6751\\u4eba\\u30c1\\u30fc\\u30e0\\u3078 <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard teams join V @a[team=!GM]\"}},{\"text\":\"\\n\",\"color\":\"red\"},{\"text\":\">>> \\u5168\\u54e1\\u4eba\\u72fc\\u30c1\\u30fc\\u30e0\\u3078 <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard teams join W @a[team=!GM]\"}},{\"text\":\"\\n\",\"color\":\"red\"},{\"text\":\">>> \\u6751\\u4eba\\u30c1\\u30fc\\u30e0\\u89e3\\u6563 <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard teams empty V\"}},{\"text\":\"\\n\",\"color\":\"red\"},{\"text\":\">>> \\u4eba\\u72fc\\u30c1\\u30fc\\u30e0\\u89e3\\u6563 <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard teams empty W\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"\\u203b\\u4e00\\u756a\\u8fd1\\u304f\\u306b\\u3044\\u308bGM\\u4ee5\\u5916\\u306e\\u4eba\\u203b\",\"color\":\"gold\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\">>> \\u96a3\\u4eba\\u3092\\u4eba\\u72fc\\u30c1\\u30fc\\u30e0\\u306b<<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard teams join W @p[team=!GM]\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\">>> \\u96a3\\u4eba\\u3092\\u7121\\u6240\\u5c5e\\u306b <<<\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard teams leave @p[team=!GM]\"}}]"],title:"Game Master's Book",author:"https://hsa12.net/minecraft/",display:{Lore:["ゲームマスター用コマンド集"]}}

村人
/give @p written_book 1 0 {pages:["[\"\",{\"text\":\"\\u261e\\u6751\\u4eba\\u261c\",\"bold\":true,\"underlined\":true,\"color\":\"dark_green\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u52dd\\u5229\\u6761\\u4ef6\\uff1a\\n\\u4eba\\u72fc\\u9663\\u55b6\\u5168\\u54e1\\u306e\\u6b7b\\u4ea1\",\"color\":\"gold\"},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"\\u307e\\u305f\\u306f\\u6307\\u5b9a\\u65e5\\u6570\\u7d4c\\u904e\",\"color\":\"gold\"},{\"text\":\"\\n\\n\\n\\u30b2\\u30fc\\u30e0\\u958b\\u59cb\\u6642\\u306f\\n\\u30b2\\u30fc\\u30e0\\u30de\\u30b9\\u30bf\\u30fc(GM)\\n\\u306e\\u6307\\u793a\\u306b\\u5f93\\u3063\\u3066\\u4e0b\\u3055\\u3044\\u3002\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u25b6\\u30c1\\u30fc\\u30e0\\u8a2d\\u5b9a\\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard teams join V @p\"}},{\"text\":\"\\u25b6\\u5f79\\u8077\\u30bf\\u30b0\\u8a2d\\u5b9a\\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players tag @p remove madman\"}}]","[\"\",{\"text\":\"\\u30b2\\u30fc\\u30e0\\u958b\\u59cb\\u6642\",\"color\":\"red\"},{\"text\":\"\\u306f\\n\\u81ea\\u5206\\u306e\\u540d\\u524d\\u304c\\u66f8\\u3044\\u3066\\u3042\\u308b\\n\\u30c1\\u30a7\\u30b9\\u30c8\\u524d\\u306e\\n\",\"color\":\"reset\"},{\"text\":\"\\u5360\\u3044\\u30dc\\u30bf\\u30f3\\u306e\\u4e0a\\u306b\\u7acb\\u3063\\u3066\",\"color\":\"red\"},{\"text\":\"\\n\\u4ee5\\u4e0b\\u3092\\u30af\\u30ea\\u30c3\\u30af\\u3057\\u3066\\u304f\\u3060\\u3055\\u3044\\u3002\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u262f\\u5360\\u3044\\u7d50\\u679c\\u3092\\u8a2d\\u7f6e\\u262f\",\"bold\":true,\"underlined\":true,\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/clone 57 60 212 57 60 212 ~ ~-3 ~ masked normal\"}},{\"text\":\"\\n \",\"color\":\"reset\"}]"],title:"役職本",author:"hsa12.net",display:{Lore:["役職の書かれた本。","なくさないでね。","これを誰かに渡すのはルール違反。"]}}

人狼
/give @p written_book 1 0 {pages:["[\"\",{\"text\":\"\\u26a1\\u4eba\\u72fc\\u26a1\",\"bold\":true,\"underlined\":true,\"color\":\"red\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u52dd\\u5229\\u6761\\u4ef6\\uff1a\\n\\u6751\\u4eba\\u9663\\u55b6\\u5168\\u54e1\\u306e\\u6b7b\\u4ea1\",\"color\":\"gold\"},{\"text\":\"\\n\\n\\n\\u30b2\\u30fc\\u30e0\\u958b\\u59cb\\u6642\\u306f\\n\\u30b2\\u30fc\\u30e0\\u30de\\u30b9\\u30bf\\u30fc(GM)\\n\\u306e\\u6307\\u793a\\u306b\\u5f93\\u3063\\u3066\\u4e0b\\u3055\\u3044\\u3002\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u25b6\\u30c1\\u30fc\\u30e0\\u8a2d\\u5b9a\\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard teams join W @p\"}},{\"text\":\"\\u25b6\\u5f79\\u8077\\u30bf\\u30b0\\u8a2d\\u5b9a\\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players tag @p remove madman\"}}]","[\"\",{\"text\":\"\\u30b2\\u30fc\\u30e0\\u958b\\u59cb\\u6642\",\"color\":\"red\"},{\"text\":\"\\u306f\\n\\u81ea\\u5206\\u306e\\u540d\\u524d\\u304c\\u66f8\\u3044\\u3066\\u3042\\u308b\\n\\u30c1\\u30a7\\u30b9\\u30c8\\u524d\\u306e\\n\",\"color\":\"reset\"},{\"text\":\"\\u5360\\u3044\\u30dc\\u30bf\\u30f3\\u306e\\u4e0a\\u306b\\u7acb\\u3063\\u3066\",\"color\":\"red\"},{\"text\":\"\\n\\u4ee5\\u4e0b\\u3092\\u30af\\u30ea\\u30c3\\u30af\\u3057\\u3066\\u304f\\u3060\\u3055\\u3044\\u3002\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u262f\\u5360\\u3044\\u7d50\\u679c\\u3092\\u8a2d\\u7f6e\\u262f\",\"bold\":true,\"underlined\":true,\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/clone 57 60 210 57 60 210 ~ ~-3 ~ masked normal\"}},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u6ce8\\u610f\\uff1a\\n\\u3053\\u3053\\u304b\\u3089\\u5148\\u306f\\n\\u3053\\u306e\\u5f79\\u8077\\u306e\\u4eba\\u306e\\u672c\\u3060\\u3051\\u306b\\n\\u66f8\\u304b\\u308c\\u3066\\u3044\\u307e\\u3059\\u3002\",\"color\":\"red\"}]","[\"\",{\"text\":\"\\u5f79\\u8077\\u30a2\\u30a4\\u30c6\\u30e0\\u3092\\u8cfc\\u5165\\u3059\\u308b\\u969b\\n\\u5f79\\u8077\\u306e\\u8a3c\\u30a2\\u30a4\\u30c6\\u30e0\\u304c\\n\\u5fc5\\u8981\\u306a\\u6642\\u306f\\n\\u4ee5\\u4e0b\\u3092\\u30af\\u30ea\\u30c3\\u30af\\u3057\\u3066\\u4e0b\\u3055\\u3044\\n\\n(\\u5fc5\\u8981\\u306a\\u3044\\u30eb\\u30fc\\u30eb\\u3082\\u6709\\u308a\\u303c)\\n\\n\"},{\"text\":\"\\u25b6\\u5f79\\u8077\\u306e\\u8a3c\\u3092\\u5165\\u624b\\u3059\\u308b\\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/give @p minecraft:string 1 0 {display:{Name:\\\"\\u4eba\\u72fc\\u306e\\u8a3c\\\",Lore:[\\\"\\u4eba\\u72fc\\u5c02\\u7528\\u30a2\\u30a4\\u30c6\\u30e0\\u3092\\u8cb7\\u3046\\u3068\\u304d\\u306b\\u5fc5\\u8981\\u3002\\\"]}}\"}}]"],title:"役職本",author:"hsa12.net",display:{Lore:["役職の書かれた本。","なくさないでね。","これを誰かに渡すのはルール違反。"]}}

占い
占い師の証ページあり
/give @p written_book 1 0 {pages:["[\"\",{\"text\":\"\\u06de\\u5360\\u3044\\u5e2b\\u06de\",\"bold\":true,\"underlined\":true,\"color\":\"blue\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u52dd\\u5229\\u6761\\u4ef6\\uff1a\\n\\u4eba\\u72fc\\u9663\\u55b6\\u5168\\u54e1\\u306e\\u6b7b\\u4ea1\\n\\u307e\\u305f\\u306f\\u6307\\u5b9a\\u65e5\\u6570\\u7d4c\\u904e\",\"color\":\"gold\"},{\"text\":\"\\n\\n\\u30b2\\u30fc\\u30e0\\u958b\\u59cb\\u6642\\u306f\\n\\u30b2\\u30fc\\u30e0\\u30de\\u30b9\\u30bf\\u30fc(GM)\\n\\u306e\\u6307\\u793a\\u306b\\u5f93\\u3063\\u3066\\u4e0b\\u3055\\u3044\\u3002\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u25b6\\u30c1\\u30fc\\u30e0\\u8a2d\\u5b9a\\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard teams join V @p\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"\\u25b6\\u5f79\\u8077\\u30bf\\u30b0\\u8a2d\\u5b9a\\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players tag @p add seer\"}}]","[\"\",{\"text\":\"\\u30b2\\u30fc\\u30e0\\u958b\\u59cb\\u6642\",\"color\":\"red\"},{\"text\":\"\\u306f\\n\\u81ea\\u5206\\u306e\\u540d\\u524d\\u304c\\u66f8\\u3044\\u3066\\u3042\\u308b\\n\\u30c1\\u30a7\\u30b9\\u30c8\\u524d\\u306e\\n\",\"color\":\"reset\"},{\"text\":\"\\u5360\\u3044\\u30dc\\u30bf\\u30f3\\u306e\\u4e0a\\u306b\\u7acb\\u3063\\u3066\",\"color\":\"red\"},{\"text\":\"\\n\\u4ee5\\u4e0b\\u3092\\u30af\\u30ea\\u30c3\\u30af\\u3057\\u3066\\u304f\\u3060\\u3055\\u3044\\u3002\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u262f\\u5360\\u3044\\u7d50\\u679c\\u3092\\u8a2d\\u7f6e\\u262f\",\"bold\":true,\"underlined\":true,\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/clone 57 60 212 57 60 212 ~ ~-3 ~ masked normal\"}},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u6ce8\\u610f\\uff1a\\n\\u3053\\u3053\\u304b\\u3089\\u5148\\u306f\\n\\u3053\\u306e\\u5f79\\u8077\\u306e\\u4eba\\u306e\\u672c\\u3060\\u3051\\u306b\\n\\u66f8\\u304b\\u308c\\u3066\\u3044\\u307e\\u3059\\u3002\",\"color\":\"red\"}]","[\"\",{\"text\":\"\\u5f79\\u8077\\u30a2\\u30a4\\u30c6\\u30e0\\u3092\\u8cfc\\u5165\\u3059\\u308b\\u969b\\n\\u5f79\\u8077\\u306e\\u8a3c\\u30a2\\u30a4\\u30c6\\u30e0\\u304c\\n\\u5fc5\\u8981\\u306a\\u6642\\u306f\\n\\u4ee5\\u4e0b\\u3092\\u30af\\u30ea\\u30c3\\u30af\\u3057\\u3066\\u4e0b\\u3055\\u3044\\n\\n(\\u5fc5\\u8981\\u306a\\u3044\\u30eb\\u30fc\\u30eb\\u3082\\u6709\\u308a\\u303c)\\n\\n\"},{\"text\":\"\\u25b6\\u5f79\\u8077\\u306e\\u8a3c\\u3092\\u5165\\u624b\\u3059\\u308b\\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/give @p minecraft:ender_pearl 1 0 {display:{Name:\\\"\\u5360\\u3044\\u5e2b\\u306e\\u8a3c\\\",Lore:[\\\"\\u5360\\u3044\\u5e2b\\u5c02\\u7528\\u30a2\\u30a4\\u30c6\\u30e0\\u3092\\u8cb7\\u3046\\u3068\\u304d\\u306b\\u5fc5\\u8981\\u3002\\\",\\\"\\u3061\\u306a\\u307f\\u306b\\u666e\\u901a\\u306b\\u6295\\u3052\\u3066\\u3082\\u4f7f\\u3048\\u308b\\u3002\\\",\\\"\\u843d\\u4e0b\\u6b7b\\u306b\\u6c17\\u3092\\u4ed8\\u3051\\u3066\\u306d\\u3002\\\"]}}\"}}]"],title:"役職本",author:"hsa12.net",display:{Lore:["役職の書かれた本。","なくさないでね。","これを誰かに渡すのはルール違反。"]}}
占い師の証ページ無し
/give @p written_book 1 0 {pages:["[\"\",{\"text\":\"\\u06de\\u5360\\u3044\\u5e2b\\u06de\",\"bold\":true,\"underlined\":true,\"color\":\"blue\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u52dd\\u5229\\u6761\\u4ef6\\uff1a\\n\\u4eba\\u72fc\\u9663\\u55b6\\u5168\\u54e1\\u306e\\u6b7b\\u4ea1\\n\\u307e\\u305f\\u306f\\u6307\\u5b9a\\u65e5\\u6570\\u7d4c\\u904e\",\"color\":\"gold\"},{\"text\":\"\\n\\n\\u30b2\\u30fc\\u30e0\\u958b\\u59cb\\u6642\\u306f\\n\\u30b2\\u30fc\\u30e0\\u30de\\u30b9\\u30bf\\u30fc(GM)\\n\\u306e\\u6307\\u793a\\u306b\\u5f93\\u3063\\u3066\\u4e0b\\u3055\\u3044\\u3002\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u25b6\\u30c1\\u30fc\\u30e0\\u8a2d\\u5b9a\\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard teams join V @p\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"\\u25b6\\u5f79\\u8077\\u30bf\\u30b0\\u8a2d\\u5b9a\\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players tag @p add seer\"}}]","[\"\",{\"text\":\"\\u30b2\\u30fc\\u30e0\\u958b\\u59cb\\u6642\",\"color\":\"red\"},{\"text\":\"\\u306f\\n\\u81ea\\u5206\\u306e\\u540d\\u524d\\u304c\\u66f8\\u3044\\u3066\\u3042\\u308b\\n\\u30c1\\u30a7\\u30b9\\u30c8\\u524d\\u306e\\n\",\"color\":\"reset\"},{\"text\":\"\\u5360\\u3044\\u30dc\\u30bf\\u30f3\\u306e\\u4e0a\\u306b\\u7acb\\u3063\\u3066\",\"color\":\"red\"},{\"text\":\"\\n\\u4ee5\\u4e0b\\u3092\\u30af\\u30ea\\u30c3\\u30af\\u3057\\u3066\\u304f\\u3060\\u3055\\u3044\\u3002\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u262f\\u5360\\u3044\\u7d50\\u679c\\u3092\\u8a2d\\u7f6e\\u262f\",\"bold\":true,\"underlined\":true,\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/clone 57 60 212 57 60 212 ~ ~-3 ~ masked normal\"}},{\"text\":\"\\n\\n\",\"color\":\"reset\"}]"],title:"役職本",author:"hsa12.net",display:{Lore:["役職の書かれた本。","なくさないでね。","これを誰かに渡すのはルール違反。"]}}

狂人
人狼の証ページあり
/give @p written_book 1 0 {pages:["[\"\",{\"text\":\"\\u26a0\\u72c2\\u4eba\\u26a0\",\"bold\":true,\"underlined\":true,\"color\":\"gold\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u52dd\\u5229\\u6761\\u4ef6\\uff1a\\n\\u6751\\u4eba\\u9663\\u55b6\\u5168\\u54e1\\u306e\\u6b7b\\u4ea1\",\"color\":\"gold\"},{\"text\":\"\\n\\n\\n\\u30b2\\u30fc\\u30e0\\u958b\\u59cb\\u6642\\u306f\\n\\u30b2\\u30fc\\u30e0\\u30de\\u30b9\\u30bf\\u30fc(GM)\\n\\u306e\\u6307\\u793a\\u306b\\u5f93\\u3063\\u3066\\u4e0b\\u3055\\u3044\\u3002\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u25b6\\u30c1\\u30fc\\u30e0\\u8a2d\\u5b9a\\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard teams join V @p\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"\\u25b6\\u5f79\\u8077\\u30bf\\u30b0\\u8a2d\\u5b9a\\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players tag @p add madman\"}}]","[\"\",{\"text\":\"\\u30b2\\u30fc\\u30e0\\u958b\\u59cb\\u6642\",\"color\":\"red\"},{\"text\":\"\\u306f\\n\\u81ea\\u5206\\u306e\\u540d\\u524d\\u304c\\u66f8\\u3044\\u3066\\u3042\\u308b\\n\\u30c1\\u30a7\\u30b9\\u30c8\\u524d\\u306e\\n\",\"color\":\"reset\"},{\"text\":\"\\u5360\\u3044\\u30dc\\u30bf\\u30f3\\u306e\\u4e0a\\u306b\\u7acb\\u3063\\u3066\",\"color\":\"red\"},{\"text\":\"\\n\\u4ee5\\u4e0b\\u3092\\u30af\\u30ea\\u30c3\\u30af\\u3057\\u3066\\u304f\\u3060\\u3055\\u3044\\u3002\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u262f\\u5360\\u3044\\u7d50\\u679c\\u3092\\u8a2d\\u7f6e\\u262f\",\"bold\":true,\"underlined\":true,\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/clone 57 60 212 57 60 212 ~ ~-3 ~ masked normal\"}},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u6ce8\\u610f\\uff1a\\n\\u3053\\u3053\\u304b\\u3089\\u5148\\u306f\\n\\u3053\\u306e\\u5f79\\u8077\\u306e\\u4eba\\u306e\\u672c\\u3060\\u3051\\u306b\\n\\u66f8\\u304b\\u308c\\u3066\\u3044\\u307e\\u3059\\u3002\",\"color\":\"red\"}]","[\"\",{\"text\":\"\\u5f79\\u8077\\u30a2\\u30a4\\u30c6\\u30e0\\u3092\\u8cfc\\u5165\\u3059\\u308b\\u969b\\n\\u5f79\\u8077\\u306e\\u8a3c\\u30a2\\u30a4\\u30c6\\u30e0\\u304c\\n\\u5fc5\\u8981\\u306a\\u6642\\u306f\\n\\u4ee5\\u4e0b\\u3092\\u30af\\u30ea\\u30c3\\u30af\\u3057\\u3066\\u4e0b\\u3055\\u3044\\n\\n(\\u5fc5\\u8981\\u306a\\u3044\\u30eb\\u30fc\\u30eb\\u3082\\u6709\\u308a\\u303c)\\n\\n\"},{\"text\":\"\\u25b6\\u5f79\\u8077\\u306e\\u8a3c\\u3092\\u5165\\u624b\\u3059\\u308b\\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/give @p minecraft:string 1 0 {display:{Name:\\\"\\u4eba\\u72fc\\u306e\\u8a3c\\\",Lore:[\\\"\\u4eba\\u72fc\\u5c02\\u7528\\u30a2\\u30a4\\u30c6\\u30e0\\u3092\\u8cb7\\u3046\\u3068\\u304d\\u306b\\u5fc5\\u8981\\u3002\\\"]}}\"}}]"],title:"役職本",author:"hsa12.net",display:{Lore:["役職の書かれた本。","なくさないでね。","これを誰かに渡すのはルール違反。"]}}
人狼の証ページ無し
/give @p written_book 1 0 {pages:["[\"\",{\"text\":\"\\u26a0\\u72c2\\u4eba\\u26a0\",\"bold\":true,\"underlined\":true,\"color\":\"gold\"},{\"text\":\"\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u52dd\\u5229\\u6761\\u4ef6\\uff1a\\n\\u6751\\u4eba\\u9663\\u55b6\\u5168\\u54e1\\u306e\\u6b7b\\u4ea1\",\"color\":\"gold\"},{\"text\":\"\\n\\n\\n\\u30b2\\u30fc\\u30e0\\u958b\\u59cb\\u6642\\u306f\\n\\u30b2\\u30fc\\u30e0\\u30de\\u30b9\\u30bf\\u30fc(GM)\\n\\u306e\\u6307\\u793a\\u306b\\u5f93\\u3063\\u3066\\u4e0b\\u3055\\u3044\\u3002\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u25b6\\u30c1\\u30fc\\u30e0\\u8a2d\\u5b9a\\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard teams join V @p\"}},{\"text\":\"\\n\",\"color\":\"reset\"},{\"text\":\"\\u25b6\\u5f79\\u8077\\u30bf\\u30b0\\u8a2d\\u5b9a\\u25c0\",\"bold\":true,\"underlined\":true,\"color\":\"dark_aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players tag @p add madman\"}}]","[\"\",{\"text\":\"\\u30b2\\u30fc\\u30e0\\u958b\\u59cb\\u6642\",\"color\":\"red\"},{\"text\":\"\\u306f\\n\\u81ea\\u5206\\u306e\\u540d\\u524d\\u304c\\u66f8\\u3044\\u3066\\u3042\\u308b\\n\\u30c1\\u30a7\\u30b9\\u30c8\\u524d\\u306e\\n\",\"color\":\"reset\"},{\"text\":\"\\u5360\\u3044\\u30dc\\u30bf\\u30f3\\u306e\\u4e0a\\u306b\\u7acb\\u3063\\u3066\",\"color\":\"red\"},{\"text\":\"\\n\\u4ee5\\u4e0b\\u3092\\u30af\\u30ea\\u30c3\\u30af\\u3057\\u3066\\u304f\\u3060\\u3055\\u3044\\u3002\\n\\n\",\"color\":\"reset\"},{\"text\":\"\\u262f\\u5360\\u3044\\u7d50\\u679c\\u3092\\u8a2d\\u7f6e\\u262f\",\"bold\":true,\"underlined\":true,\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/clone 57 60 212 57 60 212 ~ ~-3 ~ masked normal\"}}]"],title:"役職本",author:"hsa12.net",display:{Lore:["役職の書かれた本。","なくさないでね。","これを誰かに渡すのはルール違反。"]}}

--重要な座標--

---テレポート先座標---

占い場所
47 72 229
/tp @p 47 72 229 -90 0

占い後(館1F前ボタン前)
55 63 150
/tp @p 55 63 150 -90 0
占い後出現先(館2F)
84 75 146
占い後(テニスコート)
104 70 237
占い後(テニスコート向かい)
93 63 122

家中心

79 65 150

---占い結果コマブロ---

村人
57 60 212
村人と出るブロックを実行した場所の3ブロック下に配置
/clone 57 60 212 57 60 212 ~ ~-3 ~ masked normal

人狼
57 60 210
人狼と出るブロックを実行した場所の3ブロック下に配置
/clone 57 60 210 57 60 210 ~ ~-3 ~ masked normal