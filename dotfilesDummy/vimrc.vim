
set noundofile
set noswapfile
set nobackup

"
set number
set cursorline

set wrap

set ambiwidth=double


set clipboard+=unnamed

" マクロやレジスタの内容およびその他のキーボードから打ち込まれないコマンドを実行する間、画面は再描画されなくなる
"set lazyredraw

" スペース表示
set list
set listchars=tab:»-,trail:-,nbsp:%
set listchars+=space:∙



" ディレクトリ候補表示
set wildmenu

"curl -fLo $HOME/Documents/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim


set runtimepath+=expand($HOME .. 'Documents/.vim/plugged')


packadd vim-jetpack
let g:jetpack_download_method = 'curl'

call jetpack#begin($HOME .. '/Documents/.vim/plugged')
  Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
  Jetpack 'cocopon/iceberg.vim'
call jetpack#end()

for name in jetpack#names()
  if !jetpack#tap(name)
    call jetpack#sync()
    break
  endif
endfor


