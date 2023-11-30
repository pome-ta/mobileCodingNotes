" System vimrc file for iVim

" use vim, rather than vi, settings
set nocompatible

" set default encoding to UTF-8
set encoding=utf-8

" enable syntax highlighting
syntax on
" enable file type detection
filetype plugin indent on

" disable autoselect 'a'
set guioptions-=a
" do not always show the right scroll bar 'r'
set guioptions-=r
" allow backspacing over everything
set backspace=start,eol,indent

" show cursor position
set ruler
" display incomplete commands
set showcmd
" display completion matches in a status line
set wildmenu
" display a few lines of context around the cursor
" while scrolling
set scrolloff=5

" make netrw adapt cwd automatically
let g:netrw_keepdir=0
" correct netrw 'scp' command silent option
let g:netrw_scp_cmd='scp -s'
" disable using of external mkdir for netrw
" since it requires umask too
let g:netrw_localmkdir=''

" enable termguicolors
set termguicolors
" set ansi colors for terminal
let g:terminal_ansi_colors=['#435a66', '#fb3841', '#5cf09e', '#fed032', '#36b6fe', '#fb216e', '#58ffd1', '#fffefe', '#a0b0b8', '#fc736d', '#acf6be', '#fee16c', '#6fcefe', '#fc669a', '#99ffe5', '#fffefe']

" skip defaults.vim
let skip_defaults_vim=1

" set default shell
set shell=ivish

" install autocmds
" for external items writing
autocmd BufWritePost * execute "idocuments bufwritepost ". expand('<afile>')
" for external items reading
autocmd BufReadPre * execute "idocuments bufreadpre ". expand('<afile>')

" reduce the update time for live diff
set updatetime=200
