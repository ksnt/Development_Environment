*** 方法

Emacsライクなキーバインドにする。


```
[
	// 右移動（Ctrl + F）
	{ "keys": ["ctrl+f"], "command": "move", "args": {"by": "characters", "forward": true } },
	// 左移動（Ctrl + D）
	{ "keys": ["ctrl+b"], "command": "move", "args": {"by": "characters", "forward": false } },
	// 上移動（Ctrl + P）
	{ "keys": ["ctrl+p"], "command": "move", "args": {"by": "lines", "forward": false } },
	// 下移動（Ctrl + N）
	{ "keys": ["ctrl+n"], "command": "move", "args": {"by": "lines", "forward": true } },
	// 左削除（Ctrl + H）
	{ "keys": ["ctrl+h"], "command": "left_delete" },
	// 右削除（Ctrl + D）
	{ "keys": ["ctrl+d"], "command": "right_delete" },
	// 行の先頭へ移動（Ctrl + A）
	{ "keys": ["ctrl+a"], "command": "move_to", "args": {"to": "bol", "extend": false} },
	// 行の末尾へ移動（Ctrl + E）
	{ "keys": ["ctrl+e"], "command": "move_to", "args": {"to": "eol", "extend": false} },
	// 検索
	{ "keys": ["ctrl+s"], "command": "show_panel", "args": {"panel": "find", "reverse": false} },
	{ "keys": ["ctrl+s"], "command": "find_next", "context":
		[{"key": "panel", "operand": "find"}, {"key": "panel_has_focus"}]
	},
	{ "keys": ["shift+enter"], "command": "find_prev", "context":
		[{"key": "panel", "operand": "find"}, {"key": "panel_has_focus"}]
	},
	// ファイル検索
	{ "keys": ["ctrl+shift+f"], "command": "show_panel", "args": {"panel": "find_in_files"} },
	//{ "keys": ["f4"], "command": "next_result" },
	//{ "keys": ["shift+f4"], "command": "prev_result" },
	// コピー
	{ "keys": ["escape","w"], "command": "copy" },
	// カット
	{ "keys": ["ctrl+w"], "command": "cut" },
	// 上の行と入れ替える
	{ "keys": ["alt+up"], "command": "swap_line_up" },
	// 下の行と入れ替える
	{ "keys": ["alt+down"], "command": "swap_line_down" },
	// 行複製 
	{ "keys": ["ctrl+alt+down"], "command": "duplicate_line" },
	// 行削除: （Ctrl+Shift+k）
	{ "keys": ["ctrl+k", "k"], "command": "run_macro_file", "args": {"file": "Packages/Default/Delete Line.sublime-macro"} },
	// 行移動: （Ctrl+Shift+↑、Ctrl+Shift+ ↓）
	// 行をつなげる
	{ "keys": ["ctrl+j"], "command": "join_lines" },
	// 貼り付け
	{ "keys": ["ctrl+y"], "command": "paste" },
	// 保存
	{ "keys": ["ctrl+x","ctrl+s"], "command": "save" },
	// 名前をつけて保存
	{ "keys": ["ctrl+x","ctrl+a"], "command": "prompt_save_as" },
	// やり直し
	{ "keys": ["ctrl+x","u"], "command": "undo" },
	{ "keys": ["f10"], "command": "undo" },
	// マルチセレクト
	{ "keys": ["ctrl+shift+s"], "command": "find_under_expand" },
	// 矩形選択: （Shift を押しながら、右クリックしドラッグで選択）
	// 行選択: (Ctrl+Alt+上矢印、Ctrl+Alt+下矢印)
	// ウィンドウの分割: （Alt + Shift + 2,3,4）
	// コード補完の候補選択をTabで行えるようにする
	{ "keys": ["tab"], "command": "auto_complete", "context":
		[
			{ "key": "auto_complete_visible", "operator": "equal", "operand": true }
		]
	},
	{ "keys": ["shift+tab"], "command": "auto_complete_prev", "context":
		[
			{ "key": "auto_complete_visible", "operator": "equal", "operand": true }
		]
	},
	// F3で関数の宣言元にジャンプ
	{ "keys": ["f3"], "command": "goto_definition" },
	// ジャンプ元に戻る
	{ "keys": ["alt+left"], "command": "jump_back" },
	// ジャンプ元に戻ったのをまた進める
	{ "keys": ["alt+right"], "command": "jump_forward" },


	// 上記の設定のせいで上書きされたコマンドを復活させる ==================
	// 全選択（Ctrl + Shift + A）
	{ "keys": ["ctrl+shift+a"], "command": "select_all" },
	// 同じ文字を一括選択・一括編集（Ctrl + Shift + D）
	{ "keys": ["ctrl+shift+d"], "command": "find_under_expand" },
	// 選択行のコピー（Ctrl + Shift + V）
	{ "keys": ["ctrl+shift+v"], "command": "duplicate_line" },
	// 検索（Ctrl + Shift + F）
	//{ "keys": ["ctrl+shift+f"], "command": "show_panel", "args": {"panel": "find", "reverse": false} },
	// 新規タブ（Ctrl + Shift N）
	{ "keys": ["ctrl+shift+n"], "command": "new_file" },
	// 閉じる
	{ "keys": ["ctrl+x", "ctrl+c"], "command": "close" },
	// やり直しのやり直し
	{ "keys": ["f9"], "command": "redo" }

]
```


*** Reference

http://wp.re13b.jp/entry/sublime/setup/keybind
