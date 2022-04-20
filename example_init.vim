let $vimrc_path = 'D:\neovim_conf\vimrc.vim'
let $project_path = 'D:\neovim_conf\project_conf.vim'

let g:vim_conf_path = 'D:\neovim_conf\'
let g:project_name = ''
let g:project_info = {}
let g:git_bash = 'C:\Program Files\Git\bin\bash.exe'

source $vimrc_path

if filereadable($project_path)
    source $project_path
endif
