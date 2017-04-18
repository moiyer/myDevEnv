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

" Better Json support
Bundle 'elzr/vim-json'
let g:vim_markdown_json_frontmatter = 1
let g:vim_json_syntax_conceal = 0

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

call vundle#end()            " required
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
set shiftwidth=4
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
set iskeyword+=_,$,@,%,#,-

"文件类型配置
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
au BufRead,BufNewFile *.{go}   set filetype=go
au BufRead,BufNewFile *.{js}   set filetype=javascript
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} colorscheme desert " Another way to use
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

