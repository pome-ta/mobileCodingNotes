# Button icon				action				parameter
arrow.right.to.line.alt  insertString  \u{0009}
chevron.up.square  systemAction  control


[="none"
  arrow.up  systemAction  up
  arrow.down  systemAction  down
  arrow.left  systemAction  left
  arrow.right  systemAction  right
  doc.on.clipboard  systemAction  paste
]

separator

.  insertString  .
$  insertString  $
-  insertString  -
*  insertString  *
/  insertString  /


[="vim"
  +  insertString  +
  %  insertString  %
  "  insertString  "
  (  insertString  (
  [  insertString  [
  :  insertString  :
]

escape  insertString  \u{001B}

