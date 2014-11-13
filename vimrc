" Vundle plugin
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'a.vim'
Plugin 'taglist.vim'
Plugin 'cscope.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Taglist plugin
let Tlist_Show_One_File=1           "only show tag of current file
let Tlist_Exit_OnlyWindow=1         "exit Vim if tag list window is the only window
let Tlist_Use_Right_Window=1        "display in right
let Tlist_File_Fold_Auto_Close=1    "auto folding

"Cscope plugin
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
" Redirect cscope output to Quickfix
set cscopequickfix=s-,c-,d-,i-,t-,e-

" Auto-pairs plugin
let g:AutoPairsFlyMode = 1          "enable fly mode

" Others
syntax on
set number                          "display line number
set autoindent                      "auto indentation
set smartindent                     "smart align
set completeopt=preview,menu        "auto complete
set clipboard+=unnamed              "share clipboard with system
set tabstop=4                       "tab offset
set expandtab                       "expand tab as 4 spaces
set shiftwidth=4                    "4 spaces for auto indentation
set softtabstop=4                   "delete tabstop as one word in edit mode, even if it's expanded spaces
set incsearch                       "search right now
set cursorline
"hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

