sudo apt-get update
sudo apt-get install --upgrade vim ctags cscope silversearcher-ag 
cd ~/.vim_runtime
make;

git clone --recursive https://github.com/Valloric/YouCompleteMe.git
pushd;
cd YouCompleteMe; python install.py


echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/YouCompleteMe/autoload/youcompleteme.vim
source ~/.vim_runtime/YouCompleteMe/plugin/youcompleteme.vim
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/vimrcs/cscope_maps.vim
source ~/.vim_runtime/vimrcs/taglist.vim
map <F4> :Tlist<CR>
map <F2> :Explore<CR>
nnoremap <F3> :! rm -f ctags cscope.out ; ctags --c++-kinds=+p --fields=+iaS --extra=+q -R . ; cscope -R -b<CR>
set nu
set mouse=a
nnoremap <C-c> :shell<CR>
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-L> :bprev<CR>
nnoremap <C-P> :Unite -start-insert file_rec/async<cr>
nnoremap <F5> :Unite -force-redraw -start-insert file_rec/async<cr>
nnoremap <F6> :setlocal spell!<cr>
nnoremap <F8> :MRU<cr>
" nnoremap <space>/ :Unite grep:.<cr>
nnoremap <space>g :Unite grep/git:.:<cr>
nnoremap <C-\> :Unite -start-insert tag<cr>
nnoremap <space>/ :Ag  
cmap Q bufdo q
let g:unite_source_history_yank_enable = 1
let g:unite_source_rec_max_cache_files=0
nnoremap <space>y :Unite history/yank<cr>
nnoremap <space>s :Unite -quick-match buffer<cr>
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="base16color"
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
set nowrap
set wildmode=full
set tabstop=4
set softtabstop=0 noexpandtab
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
"" Change to Project specific to add project included path 
let g:ycm_global_ycm_extra_conf = "/usr/lib/vim-youcompleteme/ycm_extra_conf.py"
set foldmethod=syntax
set foldlevel=999
set foldclose=all
hi Folded ctermbg=7

let g:autotagTagsFile=".tags"

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
