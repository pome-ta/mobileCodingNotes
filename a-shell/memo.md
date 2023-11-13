# 📝 2023/11/13


```
curl -fLo ~/Documents/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim
```


```
Plug 'cocopon/iceberg.vim'
```


```
Jetpack 'cocopon/iceberg.vim'
```


```
  Sorry, you cannot run sh while another sh command is running

```



# 📝 2023/11/10


## 設定

iPhone の設定内のa-Shell にて、keep ~ sessions みたいなのがあるけど

プロンプトの設定が、反映したりされなかったりする


## Vim


手動でプラグインいれる


`~/Documents/.vim/` から`pack/mypackages` と作っていって

`start` と`opt` を作成

 
 
``` .vimrc
set encoding=utf-8
scriptencoding utf-8
syntax enable
filetype plugin indent on


hi clear
syntax enable

" Terminal 背景にする
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
colorscheme iceberg


set number
set clipboard+=unnamed
set wrap
set cursorline
set noundofile
set noswapfile
set nobackup

set tabstop=2
set shiftwidth=2
set smarttab
" インデントを調整
set smartindent


"-----検索関連-----
set incsearch " インクリメンタルサーチ
set ignorecase " 大文字小文字の区別しない
set smartcase " もし検索パターンに大文字があれば大文字小文字を区別する
set hlsearch " 検索結果のハイライトする

" Macのターミナルで全角記号の表示がずれる問題への対応
set ambiwidth=double

" 空白表示
set list

set listchars=tab:»-,trail:-,nbsp:%
set listchars+=space:∙


" #--- StatusLine 処理系
"常に Status Line を表示する
set laststatus=2

" StatusLINE設定
function! SetStatusLine()
  if mode() =~ 'i'
    let c = 1    "// カラー設定
    let mode_name = 'I'
  elseif mode() =~ 'n'
    let c = 2     "// カラー設定
    let mode_name = 'N'
  elseif mode() =~ 'R'
    let c = 3    "// カラー設定
    let mode_name = 'R'
  else
    let c = 4    "// カラー設定
    let mode_name = 'V'
  endif
  return '%' . c . '* [' . mode_name . '] %* %<%F%=%m%r %([%l/%L]%)%{strftime(" %m/%d_%H:%M ")}'
endfunction
set statusline=%!SetStatusLine()


""hi User1 ctermfg=#53343b guifg=#cdd1e6
""hi User2 ctermfg=#2a3158 guifg=#cdd1e6
""hi User3 ctermfg=#3e445e guifg=#ccd1e6
""hi User4 ctermfg=#384851 guifg=#cdd1e6

" Insert 赤系
hi User1 ctermfg=252 ctermbg=97
" Normal 青系
hi User2 ctermfg=252 ctermbg=24
" Replace 橙系
hi User3 ctermfg=252 ctermbg=95
" Visual  緑系
hi User4 ctermfg=252 ctermbg=30





" カッコ自動補完
inoremap { {}<LEFT>
inoremap ( ()<LEFT>
""inoremap < <><LEFT>
inoremap [ []<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
inoremap ` ``<LEFT>
inoremap 「 「」<LEFT>

" 表示行単位で上下移動するように
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk
" 逆に普通の行単位で移動したい時のために逆の map も設定しておく
nnoremap gj j
nnoremap gk k

```
   

# 📝 2023/11/09

[About the book - A guide to a-Shell](https://bianshen00009.gitbook.io/a-guide-to-a-shell/)

読み進めてるけど、そろそろVim のPlugin 読み込みについて勉強かなぁ

# 📝 2023/11/07

## a-shell 環境作り

iOS を想定（iPadOS）は未確認


mini もあるけど、どうなんやろか？

ゆくゆくは、

- mini で必要に応じて
- 全部使いこなすから、full


みたいな、選択肢あるな



## 参照リンク

- [GitHub - holzschu/a-shell: A terminal for iOS, with multiple windows](https://github.com/holzschu/a-shell)
- [GitHub - holzschu/a-Shell-commands: shell commands, pre-compiled to webAssembly, ready to use in a-Shell](https://github.com/holzschu/a-Shell-commands)
- [About the book - A guide to a-Shell](https://bianshen00009.gitbook.io/a-guide-to-a-shell/)




- [iPad(iOS)でa-Shellを利用してSSH設定を行う](https://zenn.dev/hashito/articles/e0c5fc0ca80a4e)
  - `env` で色々確認できるかも？
- [a-Shellアプリでgitコマンドを使用する方法 #Git - Qiita](https://qiita.com/7rikazhexde/items/a8d2cebdb57cc28a801a)
  - Git でコード管理するというより、Vim のPlugin 等々の操作想定 

  
