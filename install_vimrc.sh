sudo apt-get install ctags cscope vim-addon-manager 
sudo vam install youcompleteme
sudo apt-get install vim-youcompleteme

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

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
try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
