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
