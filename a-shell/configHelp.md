```
usage: config [-s font size][-n font name][-b background color][-f foreground color][-c cursor color][-g][-p][-d][-r]
For all parameters: "default" to get the default value currently stored, "factory" to get a-Shell factory defaults (Menlo, 13.0 pts, colors from system).
Colors can be defined by names, RGB triplets "red green blue" or HexStrings "#00FF00"
-s | --size: set font size
-n | --name: set font name. Nothing or "picker" to get the system font picker.
-b | --background: set background color
-f | --foreground: set foreground color
-c | --cursor: set cursor and highlight color
-k | --cursorShape: set cursor shape (beam, block or underline)
-l | --ligatures: normal, contextual, none...
-t | --toolbar: create a configuration file to change the toolbar
-g | --global: extend settings to all windows currently open
-p | --permanent: store settings as default values
-d | --default: reset all settings to default values
-r | --reset: reset all settings to factory default
--show: show current settings
Sample uses:
config -p: make settings for current window the default for future windows.
config -dgp: revert all open and future windows to stored default.
config -b 0 0 0 -f #00ff00: get a green-on-black VT100 look.
```


