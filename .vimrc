""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Bundle 'VundleVim/Vundle.vim'

" My Bundles here:

" original repos on github
Bundle 'tpope/vim-fugitive'

" Markdown syntax highlighting, matching rules and mappings
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
"let g:vim_markdown_folding_disabled = 1
"let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_conceal = 0

" Javascript 
"Plugin 'pangloss/vim-javascript'

" Better Json support
Bundle 'elzr/vim-json'
let g:vim_markdown_json_frontmatter = 1
let g:vim_json_syntax_conceal = 0

" Javascript support
"Bundle 'othree/yajs'

" Golang support
Bundle 'fatih/vim-go'
" Use VIM's :tags instead of :GoDef, as :GoDef has some problem in this env
let g:go_def_mapping_enabled = 0

" Tagbar to for better file struct view
Plugin 'majutsushi/tagbar'
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

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
Bundle 'ctrlpvim/ctrlp.vim'
" <C-p> to enter ctrlp mode
" <C-f/b> switch mode (recent opened files)
" <C-d> search filename or path (default is path)
" <C-j> and <C-k> to select upper/lower one
" <C-x> open the selected file in horizon splitted pane
" <C-v> open the selected file in vertical splitted pane
" <C-t> openthe selected file in a new tab

" Dir tree view
Plugin 'scrooloose/nerdtree'

" Better way to comment/uncomment
Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims=1     " Add a space after comment
" <leader>cc    Add comment
" <leader>cA    Add comment in the end of this line
" <leader>cu    Uncomment
" <leader>cm    Add comment for multi lines
" <leader>c<space>  Uncomment inteleggencily

" jellybeans color scheme
Bundle 'nanotech/jellybeans.vim'

" Keyword completion system by maintaining a cache of keywords in the current buffer
Bundle 'Shougo/neocomplete.vim'
let g:neocomplcache_enable_at_startup = 1 " Use neocomplcache when vim starts up.
" TODO: Configure neocomplete

" powerline requires server and client side to install powerline-fonts, which is not user friendly.
" So I use airline. Lean & mean status/tabline for vim that's light as air.
Bundle 'vim-airline/vim-airline'
" More themes for vim-airline
Bundle 'vim-airline/vim-airline-themes'
let g:airline_extensions = ['branch'] "Specify the extention of airline to improve the performance
let g:airline_theme="molokai"
let g:airline_powerline_fonts = 1
" Make vim and tmux use same scheme
Bundle 'edkolev/tmuxline.vim'

" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plugin 'google/vim-glaive'

" take notes
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-notes'
":let g:notes_directories = ['~/notes']

call vundle#end()            " required
call glaive#Install()
Glaive codefmt plugin[mappings]
filetype plugin indent on    " required


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set t_Co=256
colorscheme jellybeans

"set cul "高亮光标所在行
"set cuc
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
"set ruler           " 显示标尺  
set showcmd         " 输入的命令显示出来，看的清楚些  
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  
"set foldenable      " 允许折叠  
"set foldmethod=manual   " 手动折叠  
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=2
" 不要用空格代替制表符
set expandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"搜索逐字符高亮
set hlsearch
set incsearch
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#

"文件类型配置
"au BufRead,BufNewFile *.{go}   set filetype=go
"au BufRead,BufNewFile *.{js}   set filetype=javascript
"au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
"au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} colorscheme desert " Another way to use
" desert scheme based on filetype

"将tab替换为空格
nmap tt :%s/\t/    /g<CR>

" 设置当文件被改动时自动载入
set autoread
"自动保存
set autowrite
" quickfix模式
"autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全 
set completeopt=preview,menu 
"共享剪贴板  
"set clipboard+=unnamed 
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
""set foldcolumn=0
"""set foldmethod=indent 
""set foldlevel=3 
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase

set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
set selection=exclusive
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
"set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1

set tw=100 " Set the max line width to 100 charactors
" 设置进入paste的快捷键
" 等同于:set paste, :set nopaste, 让vim在paste的时候不去auto indent
set pastetoggle=<F2>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键相关  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <leader> to ,
" You can use ':let mapleader' to get current <leader>
let mapleader=','
let g:mapleader=','

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Nerdtree
map <C-x> :NERDTreeToggle<CR>

" cscope
"   's'   symbol: find all references to the token under cursor
"   'g'   global: find global definition(s) of the token under cursor
"   'c'   calls:  find all calls to the function name under cursor
"   't'   text:   find all instances of the text under cursor
"   'e'   egrep:  egrep search for the word under cursor
"   'f'   file:   open the filename under cursor
"   'i'   includes: find files that include the filename under cursor
"   'd'   called: find functions that function under cursor calls
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" 设置git mergetool的快捷键, 默认使用vimdiff
if &diff
    map <leader>1 :diffget LOCAL<CR>
    map <leader>2 :diffget BASE<CR>
    map <leader>3 :diffget REMOTE<CR>
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neocomplete setting 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1 
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
