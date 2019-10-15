" ==================== 编码和缩进相关设置 ====================
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,latin1

set nu
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
"高亮
set hls
set laststatus=2
set ruler
" 高亮显示当前行/列
" set cursorline
" set cursorcolumn

" ==================== 快捷键映射 ====================
"普通模式下大小写转换
nnoremap <c-u> guw
nnoremap <c-U> gUw
"普通模式下移动某行代码
nnoremap _ ddkkP
nnoremap - ddp
"普通模式下新增一行
"nnoremap <c-o> <esc>o<esc>

let mapleader=";"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>wq :wq<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

inoreabbrev gop //Gson@optional
inoreabbrev #i  #include
inoreabbrev #p  #pragma once
inoreabbrev stds  std::string
inoreabbrev //=  //=====================================

" ==================== vundle相关设置 ====================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
" Plugin 'tenfyzhong/CompleteParameter.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'majutsushi/tagbar'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/DoxygenToolkit.vim'
"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ==================== 常用快捷键的相关设置 ====================
set tags=tags;
noremap <Leader>tn :tnext<CR>
noremap <Leader>tp :tprevious<CR>
noremap <Leader>csc :cscope -Rbq<CR>
noremap <Leader>csa :cs add  cscope.out<CR>
noremap <leader>ctag :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
noremap <leader>bear :!make clean; bear make
noremap <leader>cv :!make clean; bear make

" ==================== 常用插件的相关设置 ====================
source ~/.vim/plugins-config/ycm.vim
source ~/.vim/plugins-config/nerdcommenter.vim
" source ~/.vim/plugins-config/UltiSnips.vim
source ~/.vim/plugins-config/vim-cpp-enhanced-highlight.vim
source ~/.vim/plugins-config/vim-fswitch.vim
source ~/.vim/plugins-config/tagbar.vim
source ~/.vim/plugins-config/minibufexpl.vim
source ~/.vim/plugins-config/NERDtree.vim
source ~/.vim/plugins-config/doxygen.vim
" source ~/.vim/plugins-config/CompleteParameter.vim


