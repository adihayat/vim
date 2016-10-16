sudo apt-get install ctags cscope vim-addon-manager 
sudo vam install youcompleteme
sudo apt-get install vim-youcompleteme

cd ~/.vim_runtime
make;
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
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-L> :bprev<CR>
nnoremap <C-P> :Unite file_rec/async<cr>
nnoremap <space>/ :Unite grep:.<cr>
let g:unite_source_history_yank_enable = 1
nnoremap <space>y :Unite history/yank<cr>
nnoremap <space>s :Unite -quick-match buffer<cr>
let g:airline#extensions#tabline#enabled = 1


try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
