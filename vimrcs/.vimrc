set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/vimrcs/cscope_maps.vim
source ~/.vim_runtime/vimrcs/taglist.vim
map <F4> :Tlist<CR>
map <F2> :30Vex<CR>
set nu
set mouse=a
 "let g:ycm_global_ycm_extra_conf = "/usr/lib/vim-youcompleteme/ycm_extra_conf.py"
try
source ~/.vim_runtime/my_configs.vim
catch
endtry
