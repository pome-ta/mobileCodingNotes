# Customizable toolbar: 

ボタンは、そのアイコン(最初の列)、ボタンがクリックされたときに実行されるアクション(2番目の列)、およびそのアクションのパラメータ(3番目の列)によって定義されます。


アイコンは、AppleのSFシンボルの1つの名前（[https://developer.apple.com/sf-symbols/](https://developer.apple.com/sf-symbols/)）または文字列のいずれかです。


アクションは、`insertString` 、`systemAction` 、または`insertCommand` のいずれかです。



パラメータの効果はアクションによって異なります。

- `insertString` の場合、任意の文字列にすることができ、ボタンを入力すると挿入されます。
  - 文字列には`\n`  を含めることができるので、複数のコマンドでもコマンドを実行できます。
- `systemAction` の場合、コントロール、アップ、ダウン、左、右、すべて選択、カット、コピー、ペーストのいずれかです。
- `insertCommand` の場合、ボタンを押すと実行される短いコマンドです。
  - このコマンドの出力はカーソル位置に挿入されます


グループは括弧で囲まれています(例については、ファイルの下部を参照)。


閉じるブラケットの後の部分は代表的な項目です(アイコンまたはテキストはゼロにすることができます)。


スペースに制約がある場合、iPadOSはその項目が`nil` でなければ、その項目を使ったサブメニューとしてグループを表示します(iOSは常にすべてのボタンを表示します)。


iOS 16では、コマンドに応じてグループを表示できます。括弧を開いた後、正規表現を追加できます。その式が現在のコマンドと一致する場合、ボタンが表示されます。特別な正規表現(「なし」)は、コマンドが実行されていない場合にのみ表示されるボタン用です。


このファイルはデフォルトのツールバーに対応します。最初に左側の4つのボタン(タブ、コントロール、エスケープ、ペースト)、次に2つのグループ間の分離を示す「セパレータ」の線、次に2つのグループ間の分離を示す「セパレータ」の行、次に右側の4つの矢印ボタン。



```
# Customizable toolbar: 
# Each button is defined by its icon (first column), the action to be executed when the button is clicked (second column) and a parameter for that action (third column).

各ボタンは、そのアイコン(最初の列)、ボタンがクリックされたときに実行されるアクション(2番目の列)、およびそのアクションのパラメータ(3番目の列)によって定義されます。

# Icons can be either the name of one of the SF Symbols from Apple: https://developer.apple.com/sf-symbols/ or a string of characters.
アイコンは、AppleのSFシンボルの1つの名前(https://developer.apple.com/sf-symbols/)または文字列のいずれかです。

# Action can be either "insertString", "systemAction" or "insertCommand"
アクションは、「insertString」、「systemAction」、または「insertCommand」のいずれかです。

# The effect of the parameter depends on the action:
# パラメータの効果はアクションによって異なります。
# - for insertString, it can be any string, and will be inserted when you type the button. 
# - insertStringの場合、任意の文字列にすることができ、ボタンを入力すると挿入されます。
#					  Strings can contain \n, so you can execute commands, even multiple commands.
ます。
#					  文字列には\n を含めることができるので、複数のコマンドでもコマンドを実行できます。
# - for systemAction, it can be any of: control, up, down, left, right, selectAll, cut, copy or paste.
# - systemActionの場合、コントロール、アップ、ダウン、左、右、すべて選択、カット、コピー、ペーストのいずれかです。
# - for insertCommand, it is a short command that will be executed when the button is pressed. 
# - insertCommandの場合、ボタンを押すと実行される短いコマンドです。
#					  The output of this command will be inserted at the cursor position
#					  このコマンドの出力はカーソル位置に挿入されます

# Groups are enclosed in brackets (see bottom of file for an example). 
# グループは括弧で囲まれています（例については、ファイルの下部を参照）。
# The part after the closing bracket is the representative item (icon or text, can be nil). 
# 閉じるブラケットの後の部分は代表的な項目です(アイコンまたはテキストはゼロにすることができます)。
# If space is constrained, iPadOS will display the group as a submenu using that item,
# スペースが制限されている場合、iPadOSはそのアイテムを使用してグループをサブメニューとして表示します。
# if it's not nil (iOS will always display all buttons). 
# ゼロでなければ(iOSは常にすべてのボタンを表示します)。

# On iOS 16, groups can be made to appear depending on the command: after the opening bracket, you can
# add a regular expression. If that expression matches the current command, the buttons will 
# show. A special regexp ("none") is for buttons that should only appear if no commands are running.
# iOS 16では、コマンドに応じてグループを表示できます。括弧を開いた後、正規表現を追加できます。その式が現在のコマンドと一致する場合、ボタンが表示されます。特別な正規表現(「なし」)は、コマンドが実行されていない場合にのみ表示されるボタン用です。
# This file corresponds to the default toolbar: first the 4 buttons on the left (tab, control, escape, paste), 
# then a line with "separator" to indicate the separation between the two groups, 
# then the 4 arrow buttons on the right.
# このファイルはデフォルトのツールバーに対応します。最初に左側の4つのボタン(タブ、コントロール、エスケープ、ペースト)、次に2つのグループ間の分離を示す「セパレータ」の線、次に2つのグループ間の分離を示す「セパレータ」の行、次に右側の4つの矢印ボタン。


# Button icon				action				parameter
arrow.right.to.line.alt		insertString		\u{0009}
chevron.up.square			systemAction		control
escape						insertString		\u{001B}
doc.on.clipboard			systemAction		paste

separator

arrow.up					systemAction		up
arrow.down					systemAction		down
arrow.left					systemAction		left
arrow.right					systemAction		right

# Example buttons:
#
# delete.backward           insertString        \u{007F}
# return                    insertString        \u{000D}
# switch.2					insertString		vim .toolbarDefinition\n
# calendar.badge.clock		insertCommand		date "+%Y_%m_%d"

# Example groups (only with iPads and iOS-style toolbar). Max 15 commands in a submenu
# グループの例(iPadとiOSスタイルのツールバーのみ)。サブメニューで最大15のコマンド
# 
# [
#     scissors						systemAction		cut
#     arrow.up.doc.on.clipboard		systemAction		copy
#     doc.on.clipboard				systemAction		paste
# ] filemenu.and.cursorarrow

# This one is shown only if no commands are running:
# [="none"
#     ls				insertString		ls -a ~/Documents/
#     uname				insertString		uname -a
#     ping 🍎			insertString		ping www.apple.com
#     date				insertString		date
# ]

# This one appears if you edit a Markdown file in Vim:
# [="vim .*\.md"
#     key					insertString		\u{001B}:q!\n
#     bold				insertString		:s/\\%V.*\\%V./**&**\n
#     italic				insertString		:s/\\%V.*\\%V./*&*\n
#     strikethrough		insertString		:s/\\%V.*\\%V./\\~\\~&\\~\\~\n
# ] contextualmenu.and.cursorarrow
```

