if(has("win32") || has("win95") || has("win64") || has("win16"))
    set shell=C:\windows\system32\cmd.exe
    let g:iswindows=1
else
	let g:iswindows=0
endif

if(g:iswindows)
	let $HOMEPATH = expand("~/")
	let $PATH = $PATH.";".g:vim_conf_path."/exec/"
	let $PATH = $PATH.";".g:vim_conf_path."/gtags/"
endif

scriptencoding utf-8

" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on

set expandtab
" 设置制表符(tab键)的宽度
set tabstop=2
" 设置软制表符的宽度
set softtabstop=2
" 自动缩进时，缩进长度
set shiftwidth=2

" 开启光亮光标行 开启高亮光标列
set cursorline
set cursorcolumn

" 设置当文件被改动时自动载入
set autoread
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 从不备份
set nobackup
" 去掉输入错误的提示声音
set noeb
" 一行显示不下换行显示，但不插入换行
set wrap
" 禁止生成交换文件
set noswapfile
" 共享剪贴板
set clipboard+=unnamed
" 快捷终端连接
set ttyfast
" 历史记录条数
set history=100
" 标尺，用于显示光标位置的行号和列号，逗号分隔。
set ruler
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1

" 显示行号
set nu
" 显示别的行距当前行的行数
set rnu
" 设置背景颜色
set background=dark
" 设置字体
set guifont=Consolas:h10

let $plug_path = g:vim_conf_path."plug.vim"
source $plug_path
let $other_path = g:vim_conf_path."other.vim"
source $other_path
let $tags_path = g:vim_conf_path."tags.vim"
source $tags_path
let $project_path = g:vim_conf_path."project.vim"
source $project_path
let $plug_conf_path = g:vim_conf_path."plug_conf.vim"
source $plug_conf_path
