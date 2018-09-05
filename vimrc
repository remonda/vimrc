""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" display
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
"""""""""""""
let g:molokai_original = 1
"let g:rehash256 = 1
colorscheme molokai

"colorscheme solarized
set background=dark
"let g:solarized_termcolors=256
"let g:rehash256 = 1

"colorscheme desert

set showtabline=1       " show tabs label when open multi-tabs, 0: never 2: always
"set foldenable          " code fold
set nofoldenable        " no code fold
set foldmethod=indent
set showmatch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" base setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

set fileencodings=utf-8,gb2312,gbk,gb18030,cp936,big5
set fenc=utf-8
set enc=utf-8

set number				" show line number
"set ruler				" show the cursor position all the time
set mouse-=a			" enable mouse (disen: set mouse-=a)
set nobackup            " do not keep a backup file
set colorcolumn=120
set cursorline          " highlight row 
"hi CursorLine   cterm=NONE ctermbg=cyan ctermfg=white guibg=darkred guifg=white

set cursorcolumn        " highlight column
"hi CursorColumn cterm=NONE ctermbg=cyan ctermfg=white guibg=darkred guifg=white
set t_Co=256

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set hlsearch			" highlighting the search pattern
set incsearch			" do incremental searching
set ignorecase          " disable: set noignorecase
set smartcase           " ignore case except have upper case  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" format
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Make tab keys to 4 spaces
set tabstop=4			" tab wide
set shiftwidth=4		" << >> shift wide
"set softtabstop=4		" tab & BS wide
set expandtab			" Change \t to spaces

" set noexpandtab		" don't change tab as space
set smarttab

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" set the content of :set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$

" characters to fill the statuslines and vertical separators.
set fillchars=stl:\ ,stlnc:\ ,vert:\ ,fold:\ ,diff:\|

" a sequence of letters which describes how automatic formatting is to be done
set formatoptions=tcrqnm

set autoindent			" copy indent from current line when starting a new line
set cindent				" enables automatic C program indenting
set smartindent


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <silent> <c-u> <esc>:redo<cr>
" about separators
nmap <silent> ( <c-w><
nmap <silent> ) <c-w>>
nmap <silent> - <c-w>-
nmap <silent> = <c-w>+
nmap <silent> <c-h> <c-w>h
nmap <silent> <c-l> <c-w>l
nmap <silent> <c-k> <c-w>k
nmap <silent> <c-j> <c-w>j
" about tab
"nmap <silent> <tab> <c-w><c-w>
nmap <silent> <c-n> <esc>:tabnew<cr>

nmap <silent> tt :call SetExpandtab()<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" add vim plug-in here
" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/vim-scripts/taglist.vim'
Plugin 'https://github.com/aperezdc/vim-template.git'
Plugin 'FuzzyFinder'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

" scripts not on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Bundle 'bling/vim-airline'
Plugin 'https://github.com/paranoida/vimairlineis.git'
" ...
" My Bundle
Bundle 'Valloric/YouCompleteMe'
Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/syntastic'
Bundle 'derekwyatt/vim-scala'

call vundle#end()
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_invoke_completion = '<C-/>'
let g:ycm_key_list_select_completion = ['<A-Down>']
let g:ycm_key_list_previous_completion = ['<A-Up>']

nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <F8> :YcmCompleter GoToDefinitionElseDeclaration<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntasitc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasitcStaticlineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F3> :NERDTreeMirror<CR>
nmap <F3> :NERDTreeToggle<CR>
let g:NERDTreeMinimalUI=1 "不显示帮助面板
let g:NERDTreeDirArrows=1 "目录箭头 1 显示箭头  0传统+-|号
let g:NERDTreeWidth = 25

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UltiSnip
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsListSnippets = "<c-l>"
let g:UltiSnipsSnippetsDir = "/home/remonda/.vim/bundle/vim-snippets/UltiSnips"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_left = 1                                "在左侧                                              
"let g:tagbar_right = 1                              "在右侧                                              
let g:tagbar_width = 25                              "设置宽度                                            
let g:tagbar_compact=1                               "no help

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TagList
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <F10> :TlistToggle<CR>
let g:Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let g:Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let g:Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
"let g:Tlist_Use_Left_Window = 1         "在左侧窗口中显示taglist窗口
let g:Tlist_WinWidth = 25
let g:Tlist_Auto_Open = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif

let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#whitespace#enabled=0 

"let g:airline_theme='vim-airline-themes'
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 13
"set guifont = Ubuntu\ Mono\ for\ Powerline\ 12

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

set laststatus=2
set lazyredraw

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" function
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function SetExpandtab()
    let s:current_expandtab = &expandtab
    if s:current_expandtab == 0
        set expandtab
    else
        set noexpandtab
    endif
endfunction

nmap <silent> <c-a> :call SetFoldEnable()<cr>

function SetFoldEnable()
    let s:current_foldenable = &foldenable
    if s:current_foldenable == 0
        set foldenable
    else
        set nofoldenable
    endif
endfunction


nmap <silent> cm :call BaiduInfCodeStyle()<cr>
function! BaiduInfCodeStyle()
    silent! :%s/\n\{3,\}/\r\r/e
    silent! :%s/\t/    /g
    silent! :%s/\s*$//g
    silent! :%s/\<if\s*(\s*/if (/
    silent! :%s/\<for(/for (/
    silent! :%s/\<foreach(/foreach (/
    silent! :%s/\s*)\s*{\s*/) {/g
    silent! :%s/else\s*{\s*/else {/g
    silent! :%s/}\s*else/} else/g
    silent! :%s/else\s*if/elseif/g
endfunction

