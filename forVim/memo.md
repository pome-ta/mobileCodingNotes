# 📝 2023/11/27

## 整理

- プラグインたちの読み込み連携
  - どんな流れでいくか
  - どう読み込むか
  - パス関係
- lsp
  - なるべくバニラで？
    - a-Shell やらiVim で違うので
  - 仕組みまでわかるといいなぁ

## `Jetpack`

```
packadd vim-jetpack
let g:jetpack_download_method = 'curl'

call jetpack#begin($HOME .. '/Documents/.vim')
  Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
  Jetpack 'cocopon/iceberg.vim'
call jetpack#end()
```

a-Shell だと難しいかぁ、、、




# 📝 2023/11/26


## `:version` を保存

[[Vim問題] version の出力結果をバッファに出力した結果 | Vim入門](https://vim.blue/vim-execute-output-version/)

### `$HOME` 問題になるかも？


- iVim
  - `~/Documents`
- a-Shell
  - `~/`
  
参照が違うので、うまくハンドリングをしないといけない？
  