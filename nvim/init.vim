"dein Scripts-----------------------------

if &compatible
  set nocompatible " Be iMproved
endif

set runtimepath+=$XDG_CACHE_HOME/dein/repos/github.com/Shougo/dein.vim

" set cache and config dirs
let s:dein_cache_dir = $XDG_CACHE_HOME . '/dein'
let s:dein_config_dir = $XDG_CONFIG_HOME . '/nvim'

let s:dein_dir = s:dein_cache_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_dir))
endif

if dein#load_state(s:dein_cache_dir)
  call dein#begin(s:dein_cache_dir)

  " toml
  let s:toml = s:dein_config_dir . '/dein.toml'
  let s:toml_lazy = s:dein_config_dir . '/dein-lazy.toml'

  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:toml_lazy, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on

if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" colorscheme
set t_Co=256
colorscheme hybrid

set number
set autoindent
set noswapfile   " スワップファイルの作成しない
set showcmd

" 検索
set hls
set ignorecase
set incsearch

" タブ関連
set tabstop=2
set shiftwidth=2 " タブの幅
set expandtab    " タブをスペースに

inoremap <silent> jj <ESC>
