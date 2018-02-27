#sudo apt-get update
sudo apt-get --assume-yes install --upgrade vim ctags cscope silversearcher-ag cmake vim-nox pylint git exuberant-ctags build-essential python-dev libclang1
cd ~/.vim_runtime
make;
cd ~/.vim_runtime;
git clone https://github.com/nathanaelkane/vim-indent-guides.git sources_non_forked/vim-indent-guides
git clone https://github.com/joshdick/onedark.vim.git sources_non_forked/onedark 
git clone  https://github.com/jalcine/cmake.vim.git sources_non_forked/cmake_vim
git clone --recursive https://github.com/Valloric/YouCompleteMe.git;
pushd YouCompleteMe;
git submodule update --init --recursive;
python install.py --clang-completer 




echo '
" let $VIM         = $HOME"/.vim_runtime/vim/src/vim"     
" let $VIMRUNTIME  = $HOME"/.vim_runtime/vim/runtime" 
" set runtimepath^=$VIMRUNTIME 
set runtimepath+=~/.vim_runtime 
set encoding=utf-8
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
nnoremap <F3> :! rm -f ctags cscope.out ; ctags --c++-kinds=+p --fields=+iaS --extra=+q -R . &  cscope -R -b &<CR>
set nu
set mouse=a
nnoremap <C-c> :shell<CR>
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
nnoremap <F5> :Unite -force-redraw -start-insert file_rec/async<cr>
nnoremap <F6> :setlocal spell!<cr>
nnoremap <F8> :MRU<cr>
nnoremap <F9> :YcmCompleter GetDoc<cr>
nnoremap <F12> :YcmCompleter GoToDeclaration<cr>
nnoremap <F10> :YcmCompleter GoToDefinition<cr>
nnoremap <C-h> :YcmCompleter GoToInclude<cr>
" nnoremap <space>/ :Unite grep:.<cr>
nnoremap <space>g :Unite grep/git:.:<cr>
nnoremap <F7> :Unite -start-insert tag<cr>
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
let g:ycm_auto_trigger = 0
let g:ctrlp_max_files=0
""set foldmethod=syntax
""set foldlevel=999
""set foldclose=all
hi Folded ctermbg=7

let g:autotagTagsFile=".tags"
colorscheme onedark

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
