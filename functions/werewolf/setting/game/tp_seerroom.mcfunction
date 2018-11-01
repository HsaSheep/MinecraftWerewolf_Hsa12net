#占い部屋へ
tp @a[team=!GM] 47 72 229
#村人と人狼に看板と破壊アイテム配布
give @a[team=V] minecraft:sign 16 0 {display:{Name:"占い部屋用 表札",Lore:["ゲーム設定時間用アイテム。","チェスト奥の壁にだけつけられる。","自分の名前(アカウント名)を書こう。","余ったものは持っていればOK(GMが消します)。","消えなかったら教えてください…"]},CanPlaceOn:["minecraft:wool"]}
give @a[team=V] minecraft:wooden_hoe 1 0 {display:{Name:"占い部屋用 看板破壊アイテム",Lore:["ゲーム設定時間用アイテム。","間違ってつけたり、書きミスした看板を外せる。","他人のを外したりしないでね…","持っていればOK(GMが消します)。","消えなかったら教えてください…"]},CanDestroy:["minecraft:wall_sign"]}
give @a[team=W] minecraft:sign 16 0 {display:{Name:"占い部屋用 表札",Lore:["ゲーム設定時間用アイテム。","チェスト奥の壁にだけつけられる。","自分の名前(アカウント名)を書こう。","余ったものは持っていればOK(GMが消します)。","消えなかったら教えてください…"]},CanPlaceOn:["minecraft:wool"]}
give @a[team=W] minecraft:wooden_hoe 1 0 {display:{Name:"占い部屋用 看板破壊アイテム",Lore:["ゲーム設定時間用アイテム。","間違ってつけたり、書きミスした看板を外せる。","他人のを外したりしないでね…","持っていればOK(GMが消します)。","消えなかったら教えてください…"]},CanDestroy:["minecraft:wall_sign"]}