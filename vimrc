set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

"插件加载
call plug#begin('~/.vim/plug')
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/L9'
Plug 'rstacruz/sparkup', {'runtimepath': 'vim/'}
Plug 'fatih/vim-go'
Plug 'junegunn/vim-easy-align'
"Plug 'Valloric/YouCompleteMe'  "改用deoplete
Plug 'scrooloose/nerdtree'
Plug 'dracula/vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/taglist.vim'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/Vimball'
Plug 'jlanzarotta/bufexplorer'
Plug 'fholgado/minibufexpl.vim'
Plug 'yianwillis/vimcdoc'
Plug 'Raimondi/delimitMate'
"Plug 'neomake/neomake'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"deoplete自动补齐插件,似乎不如YCM好用
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  "deoplete core
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  "for Go
  Plug 'zchee/deoplete-go', { 'do': 'make'}
endif


call plug#end()

filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本

"设置开始
set background=dark
set t_Co=256
"colorscheme dracula
"colorscheme terminal
"colorscheme solarized
"colorscheme molokai
"colorscheme onedark 
"colorscheme one
if has("gui_running")
  colorscheme solarized
else
  colorscheme onedark
endif


""set mouse=n
set shortmess=atI
set encoding=utf-8
set fileformat=unix
set fileformats=unix,mac,dos
set fileencoding=utf-8
set fileencodings=utf-8,gbk,cp936,default
set termencoding=utf-8
set ttym=xterm
set scroll=10
set sidescroll=1
set tabstop=4
set confirm
set clipboard+=unnamed  "share clipboard with system
""set tagbsearch
set hlsearch
set linespace=1
set nowrap
set helplang=cn
set history=100
syntax enable
syntax on
set ruler
set autowrite
set more
set wb
set backup
set backupskip=/tmp/*
set backupcopy=yes
set backupdir=~/tmp/vimbak "设置自动备份的目录,如果指定目录不存在需要先创建
set directory=.
set swapfile
set swapsync=fsync
set updatecount=200
set updatetime=5000
set maxmem=1024000
set maxmemtot=2048000
set suffixes=.bak,~,.o,.info,.swp,.obj
"set suffixesadd
set laststatus=2
set undolevels=500
set showcmd
set showmatch
set showmode
set ruler

"set statusline=\ \ %-00.32F\ \ %m\%r\%w\%=\ %y\ \ %{&fileencoding}\ \ %{&fileformat}\ \ \ \ \ \ %c:%l/%L\(%p%%\)\ \ 
set eadirection=both
set winheight=2
set winminheight=2
set winwidth=25
set winminwidth=25
set helpheight=15
set switchbuf=usetab,newtab
set showtabline=1
"set linespace=0
"set guifont=Consolas:h16 

"设置GUI环境下的字体:
"注意:由于使用了airline状态栏插件,要使状态栏完美展示需要使用打了powerline补丁的字体,
"目前使用DejaVu_Sans_Mono和Consolas
"(
"https://github.com/Znuff/consolas-powerline.git
"https://github.com/powerline/fonts/tree/master/DejaVuSansMono
")
"并设置let g:airline_powerline_fonts = 1
"其他powerline字体:https://github.com/powerline/fonts
set guifont=DejaVu_Sans_Mono_for_Powerline:h16,Consolas_NF:h16
set guifontwide=YaHei_Consolas_Hybrid:h14

"set guioptions-=T
"set completeopt=longest,menu
set number
set numberwidth=5
set noreadonly
set nolisp
set aw
set nocursorline
set nocursorcolumn
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
if has("gui_running")
	
else

endif


"vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }



"FilesView
let NERDTreeMinimalUI = 1
let NERDTreeWinSize = 25
let NERDTreeShowHidden = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
let NERDTreeStatusline='%l/%L :%v' 
nmap wm :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree


"ctags
let Tlist_Ctags_Cmd = '/opt/local/bin/ctags'
set tags=tags;
"taglist
"不同时显示多个文件的 tag ，只显示当前文件的
let Tlist_Show_One_File  =1
"如果 taglist 窗口是最后一个窗口，则退出 vim
let Tlist_Exit_OnlyWindow = 1
"显示taglist菜单
let Tlist_Show_Menu = 1
let Tlist_Auto_Open = 0
let Tlist_File_Fold_Auto_Close = 1

"tagbar
let g:tagbar_ctags_bin = '/opt/local/bin/ctags'
let g:tagbar_left = 0
let g:tagbar_width = 25
let g:tagbar_autofocus = 0
let g:tagbar_autoclose = 1
let g:tagbar_autoshowtag = 1
nmap tag :TagbarToggle<CR>
"autocmd VimEnter * nested :TagbarOpen

"MiniBufExplorer
let g:miniBufExplorerAutoStart = 0

"airline
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ''
" tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='onedark'
let g:airline#extensions#tabline#formatter = 'unique_tail'
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif
if has("gui_running")
	let g:airline_powerline_fonts = 1 "需要先安装Powerline字体否则禁用此配置项 
endif

"YouCompleteMe
"set completeopt = longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口"
"let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM基于标签引擎
"let g:syntastic_ignore_files=[".*\.py$"]
"let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
"let g:ycm_confirm_extra_conf = 0                            " 关闭加载.ycm_extra_conf.py提示
"let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键,没有这个会拦截掉tab, 导致其他插件的tab不能用.
"let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
"let g:ycm_complete_in_comments = 0                          " 在注释输入中也能补全
"let g:ycm_complete_in_strings = 0                           " 在字符串输入中也能补全
"let g:ycm_collect_identifiers_from_comments_and_strings = 0 " 注释和字符串中的文字也会被收入补全
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"  "回车即选中当前项
"nnoremap <leader>td :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
"let g:ycm_min_num_of_chars_for_completion=2                 " 从第2个键入字符就开始罗列匹配项
"let g:ycm_key_list_select_completion = ['', '']
"let g:ycm_key_list_previous_completion = ['', '']
"let g:ycm_key_invoke_completion = ''

"Deoplet
set completeopt=menuone,menu,longest
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

"Terminal
set termwinsize="12x50"

"set UltiSnips
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrgger="<leader><tab>"
let g:UltiSnipsListSnippets="<c-e>"
