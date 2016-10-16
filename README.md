## How to install the Awesome version?
The awesome version includes a lot of great plugins, configurations and color schemes that make Vim a lot better. To install it simply do following:

	git clone https://github.com/adihayat/vim.git ~/.vim_runtime
	sh ~/.vim_runtime/install_vimrc.sh

I also recommend using [Source Code Pro font from Adobe](http://store1.adobe.com/cfusion/store/html/index.cfm?event=displayFontPackage&code=1960) (it's free and awesome font for writing and programming). The Awesome vimrc is already setup to try to use it

## How to update to latest version?

Simply just do a git rebase!

    cd ~/.vim_runtime
    git pull --rebase


## Some screenshots

Colors when editing a Python file:
![Screenshot 1](http://files1.wedoist.com/e952fdb343b1e617b90d256e474d0370/as/screenshot_1.png)

Opening recently opened files [mru.vim](https://github.com/vim-scripts/mru.vim):
![Screenshot 2](http://files1.wedoist.com/1967b0e48af40e513d1a464e08196990/as/screenshot_2.png)

[NERD Tree](https://github.com/scrooloose/nerdtree) plugin in a terminal window:
![Screenshot 3](http://files1.wedoist.com/b1509d7ed9e9f357e8d04797f9fad67b/as/screenshot3.png)

This vimrc even works on Windows!
![Screenshot 4](http://files1.wedoist.com/4e85163d97b81422240c822c82022f2f/as/screenshot_4.png)

Distraction free mode using [goyo.vim](https://github.com/junegunn/goyo.vim) and [vim-zenroom2](https://github.com/amix/vim-zenroom2):
![Screenshot 5](https://d2dq6e731uoz0t.cloudfront.net/a5182977c3d6c2a6cd3f9e97398ca8ca/as/zen_mode.jpg)


## Included Plugins

I recommend reading the docs of these plugins to understand them better. Each of them provide a much better Vim experience!

* [pathogen.vim](https://github.com/tpope/vim-pathogen): Manages the runtime path of the plugins
* [snipMate.vim](https://github.com/garbas/vim-snipmate): snipMate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim
* [bufexplorer.zip](https://github.com/vim-scripts/bufexplorer.zip): Buffer Explorer / Browser. This plugin can be opened with `<leader+o>`
* [NERD Tree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for vim
* [ack.vim](https://github.com/mileszs/ack.vim): Vim plugin for the Perl module / CLI script 'ack'
* [ag.vim](https://github.com/rking/ag.vim): A much faster Ack
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim): Fuzzy file, buffer, mru and tag finder. In my config it's mapped to `<Ctrl+F>`, because `<Ctrl+P>` is used by YankRing
* [mru.vim](https://github.com/vim-scripts/mru.vim): Plugin to manage Most Recently Used (MRU) files. Includes my own fork which adds syntax highlighting to MRU. This plugin can be opened with `<leader+f>`
* [open_file_under_cursor.vim](https://github.com/amix/open_file_under_cursor.vim): Open file under cursor when pressing `gf`
* [vim-indent-object](https://github.com/michaeljsmith/vim-indent-object): Defines a new text object representing lines of code at the same indent level. Useful for python/vim scripts
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors): Sublime Text style multiple selections for Vim, CTRL+N is remapped to CTRL+S (due to YankRing)
* [vim-expand-region](https://github.com/terryma/vim-expand-region): Allows you to visually select increasingly larger regions of text using the same key combination.
* [vim-fugitive](https://github.com/tpope/vim-fugitive): A Git wrapper so awesome, it should be illegal
* [goyo.vim](https://github.com/junegunn/goyo.vim) and [vim-zenroom2](https://github.com/amix/vim-zenroom2): 
Remove all clutter and focus only on the essential. Similar to iA Writer or Write Room [Read more here](http://amix.dk/blog/post/19744)
* [vim-commentary](https://github.com/tpope/vim-commentary): Comment stuff out.  Use `gcc` to comment out a line (takes a count), `gc` to comment out the target of a motion. `gcu` uncomments a set of adjacent commented lines.
* [syntastic](https://github.com/scrooloose/syntastic): Syntax checking hacks for vim
* [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack): Maintains a history of previous yanks, changes and deletes
* [lightline.vim](https://github.com/itchyny/lightline.vim): A light and configurable statusline/tabline for Vim


## Included color schemes

* [peaksea](https://github.com/vim-scripts/peaksea): My favorite!
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
* [vim-irblack](https://github.com/wgibbs/vim-irblack)
* [mayansmoke](https://github.com/vim-scripts/mayansmoke)
* [vim-pyte](https://github.com/therubymug/vim-pyte)


## Included modes

* [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
* [vim-less](https://github.com/groenewege/vim-less)
* [vim-bundle-mako](https://github.com/sophacles/vim-bundle-mako)
* [vim-markdown](https://github.com/tpope/vim-markdown)
* [nginx.vim](https://github.com/vim-scripts/nginx.vim): Highlights configuration files for nginx
* [vim-go](https://github.com/fatih/vim-go)


## How to include your own stuff?

After you have installed the setup you can create **~/.vim_runtime/my_configs.vim** to fill in any configurations that are important for you. For instance, my **my_configs.vim** looks like this:

	~/.vim_runtime (master)> cat my_configs.vim
	map <leader>ct :cd ~/Desktop/Todoist/todoist<cr>
	map <leader>cw :cd ~/Desktop/Wedoist/wedoist<cr> 

You can also install your own plugins, for instance, via pathogen we can install [vim-rails](https://github.com/tpope/vim-rails):

	cd ~/.vim_runtime
	git clone git://github.com/tpope/vim-rails.git sources_non_forked/vim-rails
	
Now you have vim-rails installed ;-)


## Key Mappings

### Plugin related mappings

Open [bufexplorer](https://github.com/vim-scripts/bufexplorer.zip) and see and manage the current buffers (`<leader>o`):
    
    map <leader>o :BufExplorer<cr>

Open [MRU.vim](https://github.com/vim-scripts/mru.vim) and see the recently open files (`<leader>f`):

    map <leader>f :MRU<CR>

Open [ctrlp.vim](https://github.com/kien/ctrlp.vim) plugin (`<leader>j` or `<ctrl>f`):
    
    let g:ctrlp_map = '<c-f>'

Managing the [NERD Tree](https://github.com/scrooloose/nerdtree) plugin:

    map <leader>nn :NERDTreeToggle<cr>
    map <leader>nb :NERDTreeFromBookmark 
    map <leader>nf :NERDTreeFind<cr>

[goyo.vim](https://github.com/junegunn/goyo.vim) and [vim-zenroom2](https://github.com/amix/vim-zenroom2) lets you only focus on one thing at a time. It removes all the distractions and centers the content. It has a special look when editing Markdown, reStructuredText and textfiles. It only has one mapping. (`<leader>z`)

    map <leader>z :Goyo<cr>

### Normal mode mappings

Fast saving of a buffer (`<leader>w`):

	nmap <leader>w :w!<cr>
	
Map `<Space>` to `/` (search) and `<Ctrl>+<Space>` to `?` (backwards search):
	
	map <space> /
	map <c-space> ?
	map <silent> <leader><cr> :noh<cr>

Disable highlight when `<leader><cr>` is pressed:
	
	map <silent> <leader><cr> :noh<cr>

Smart way to move between windows (`<ctrl>j` etc.):
	
	map <C-j> <C-W>j
	map <C-k> <C-W>k
	map <C-h> <C-W>h
	map <C-l> <C-W>l

Closing of current buffer(s) (`<leader>bd` and (`<leader>ba`)):
	
	" Close current buffer
	map <leader>bd :Bclose<cr>
	
	" Close all buffers
	map <leader>ba :1,1000 bd!<cr>
	
Useful mappings for managing tabs:
	
	map <leader>tn :tabnew<cr>
	map <leader>to :tabonly<cr>
	map <leader>tc :tabclose<cr>
	map <leader>tm :tabmove 
	
	" Opens a new tab with the current buffer's path
	" Super useful when editing files in the same directory
	map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
	
Switch CWD to the directory of the open buffer:
	
	map <leader>cd :cd %:p:h<cr>:pwd<cr>
	
Open vimgrep and put the cursor in the right position:
	
	map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

Vimgreps in the current file:
	
	map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

Remove the Windows ^M - when the encodings gets messed up:
	
	noremap <leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
	
Quickly open a buffer for scripbble:
	
	map <leader>q :e ~/buffer<cr>

Toggle paste mode on and off:
	
	map <leader>pp :setlocal paste!<cr>


### Insert mode mappings

Quickly insert parenthesis/brackets/etc.:

    inoremap $1 ()<esc>i
    inoremap $2 []<esc>i
    inoremap $3 {}<esc>i
    inoremap $4 {<esc>o}<esc>O
    inoremap $q ''<esc>i
    inoremap $e ""<esc>i
    inoremap $t <><esc>i

Insert the current date and time (useful for timestamps):

    iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>


### Visual mode mappings

Visual mode pressing `*` or `#` searches for the current selection:

	vnoremap <silent> * :call VisualSelection('f')<CR>
	vnoremap <silent> # :call VisualSelection('b')<CR>

When you press gv you vimgrep after the selected text:

	vnoremap <silent> gv :call VisualSelection('gv')<CR>

When you press `<leader>r` you can search and replace the selected text:

	vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

Surround the visual selection in parenthesis/brackets/etc.:

    vnoremap $1 <esc>`>a)<esc>`<i(<esc>
    vnoremap $2 <esc>`>a]<esc>`<i[<esc>
    vnoremap $3 <esc>`>a}<esc>`<i{<esc>
    vnoremap $$ <esc>`>a"<esc>`<i"<esc>
    vnoremap $q <esc>`>a'<esc>`<i'<esc>
    vnoremap $e <esc>`>a"<esc>`<i"<esc>
	

### Command line mappings

$q is super useful when browsing on the command line. It deletes everything until the last slash:

    cno $q <C-\>eDeleteTillSlash()<cr>

Bash like keys for the command line:

    cnoremap <C-A>		<Home>
    cnoremap <C-E>		<End>
    cnoremap <C-K>		<C-U>

    cnoremap <C-P> <Up>
    cnoremap <C-N> <Down>

Write the file as sudo (only on Unix). Super useful when you open a file and you don't have permissions to save your changes. [Vim tip](http://vim.wikia.com/wiki/Su-write):

    :W 


### Spell checking
Pressing `<leader>ss` will toggle and untoggle spell checking

    map <leader>ss :setlocal spell!<cr>

Shortcuts using `<leader>` instead of special chars

    map <leader>sn ]s
    map <leader>sp [s
    map <leader>sa zg
    map <leader>s? z=

### Cope	
Do :help cope if you are unsure what cope is. It's super useful!

When you search with vimgrep, display your results in cope by doing:
`<leader>cc`

To go to the next search result do:
`<leader>n`

To go to the previous search results do:
`<leader>p`

Vimscript mappings:

    map <leader>cc :botright cope<cr>
    map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
    map <leader>n :cn<cr>
    map <leader>p :cp<cr>

## How to uninstall
Do following:
* Remove `~/.vim_runtime`
* Remove any lines that refernce `.vim_runtime` in your `~/.vimrc`

## Unite plugin
[![Stories in Ready](https://badge.waffle.io/Shougo/unite.vim.png)](https://waffle.io/Shougo/unite.vim)  
![Unite.vim](https://s3.amazonaws.com/github-csexton/unite-brand.png)

The unite or unite.vim plug-in can search and display information from
arbitrary sources like files, buffers, recently used files or registers.  You
can run several pre-defined actions on a target displayed in the unite window.

The difference between unite and similar plug-ins like fuzzyfinder,
ctrl-p or ku is that unite provides an integration interface for several
sources and you can create new interfaces using unite.

![](https://s3.amazonaws.com/github-csexton/unite-01.gif)

## Usage

[![Join the chat at https://gitter.im/Shougo/unite.vim](https://badges.gitter.im/Shougo/unite.vim.svg)](https://gitter.im/Shougo/unite.vim?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Run unite to display files and buffers as sources to pick from.

	:Unite file buffer


Run unite with an initial filter value (foo) to narrow down files.

	:Unite -input=foo file


If you start unite it splits the window horizontally and pops up
from the top of Vim by default.

	:Unite file

The example call above lists all the files in the current directory. You can
choose one of them in the unite window by moving the cursor up and down
as usual with j and k. If you type Enter on an active candidate it will open
it in a new buffer. Enter triggers the default action for a candidate which is
"open" for candidates of the kind "file". You can also select an alternative
action for a candidate with <Tab>. See also `unite-action` to read on about
actions.

You can also narrow down the list of candidates by a keyword. If you change
into the insert mode inside of a unite window, the cursor drops you behind the
">" in the second line from above. There you can start typing to filter the
candidates.  You can also use the wild card `*` as an arbitrary character
sequence. For example,

	*hisa

matches hisa, ujihisa, or ujihisahisa. Furthermore, two consecutive wild cards
match a directory recursively.

	**/foo

So the example above matches bar/foo or buzz/bar/foo.
Note: The unite action `file_rec` does a recursive file matching by default
without the need to set wildcards.

You can also specify multiple keywords to narrow down the candidates. Multiple
keywords need to be separated either by a space " " or a dash "|". The
examples below match for candidates that meet both conditions "foo" and "bar".

	foo bar
	foo|bar

You can also specify negative conditions with an exclamation mark "!".  This
matches candidates that meet "foo" but do not meet "bar".

	foo !bar

Wild cards are added automatically if you add a "/" in the filter and you have
specified "files" as the buffer name with the option "-buffer-name". That's
handy in case you select files with unite.

	:Unite -buffer-name=files file

See also `unite_default_key_mappings` for other actions.

## Install

Install the distributed files into your Vim script directory which is usually
`~/.vim/`, or `$HOME/vimfiles` on Windows. You should consider using one of the
famous package managers for Vim like vundle or neobundle to install the
plugin.

After installation you can run unite with the `:Unite` command and append the
sources to the command you wish to select from as parameters. However, it's a
pain in the ass to run the command explicitly every time, so I recommend you
to set a key mapping for the command. See `:h unite`.

Note: MRU sources are splitted.  To use mru sources, you must install neomru.
https://github.com/Shougo/neomru.vim

## Resources

* [Unite plugins (in Japanese)](https://github.com/Shougo/unite.vim/wiki/unite-plugins)
* [Unite.vim, the Plugin You Didn't Know You Need](http://bling.github.io/blog/2013/06/02/unite-dot-vim-the-plugin-you-didnt-know-you-need/)
* [Replacing All The Things with Unite.vim — Codeography](http://www.codeography.com/2013/06/17/replacing-all-the-things-with-unite-vim.html)
* [Beginner's Guide to Unite](http://usevim.com/2013/06/19/unite/)
* [Standards: How to make a Unite plugin](http://ujihisa.blogspot.jp/2010/11/how-to-make-unite-plugin.html)
* [FAQ (`:h unite-faq`)](https://github.com/Shougo/unite.vim/blob/master/doc/unite.txt#L3608)


## Screen shots

unite action source
-------------------
![Unite action source.](http://gyazo.com/c5c000170f28926aaf83d0c47bc5fcbb.png)

unite output source
-------------------
![Unite output source.](http://cdn-ak.f.st-hatena.com/images/fotolife/o/osyo-manga/20130307/20130307101224.png)

unite mapping source
--------------------
![Unite mapping source.](http://cdn-ak.f.st-hatena.com/images/fotolife/o/osyo-manga/20130307/20130307101225.png)

unite menu source
-----------------
![Unite menu source.](http://cdn-ak.f.st-hatena.com/images/fotolife/o/osyo-manga/20130307/20130307101227.png)

unite menu source with customization
------------------------------------
![Unite menu source with customization.](https://f.cloud.github.com/assets/390964/734885/82b91006-e2e1-11e2-9957-fb279bc71311.png)

```viml
let g:unite_source_menu_menus = get(g:,'unite_source_menu_menus',{})
let g:unite_source_menu_menus.git = {
    \ 'description' : '            gestionar repositorios git
        \                            ⌘ [espacio]g',
    \}
let g:unite_source_menu_menus.git.command_candidates = [
    \['▷ tig                                                        ⌘ ,gt',
        \'normal ,gt'],
    \['▷ git status       (Fugitive)                                ⌘ ,gs',
        \'Gstatus'],
    \['▷ git diff         (Fugitive)                                ⌘ ,gd',
        \'Gdiff'],
    \['▷ git commit       (Fugitive)                                ⌘ ,gc',
        \'Gcommit'],
    \['▷ git log          (Fugitive)                                ⌘ ,gl',
        \'exe "silent Glog | Unite quickfix"'],
    \['▷ git blame        (Fugitive)                                ⌘ ,gb',
        \'Gblame'],
    \['▷ git stage        (Fugitive)                                ⌘ ,gw',
        \'Gwrite'],
    \['▷ git checkout     (Fugitive)                                ⌘ ,go',
        \'Gread'],
    \['▷ git rm           (Fugitive)                                ⌘ ,gr',
        \'Gremove'],
    \['▷ git mv           (Fugitive)                                ⌘ ,gm',
        \'exe "Gmove " input("destino: ")'],
    \['▷ git push         (Fugitive, salida por buffer)             ⌘ ,gp',
        \'Git! push'],
    \['▷ git pull         (Fugitive, salida por buffer)             ⌘ ,gP',
        \'Git! pull'],
    \['▷ git prompt       (Fugitive, salida por buffer)             ⌘ ,gi',
        \'exe "Git! " input("comando git: ")'],
    \['▷ git cd           (Fugitive)',
        \'Gcd'],
    \]
nnoremap <silent>[menu]g :Unite -silent -start-insert menu:git<CR>
```

## Video

https://www.youtube.com/watch?v=fwqhBSxhGU0&hd=1

It is a good introduction about the possibilities of Unite by ReneFroger.


## Special Thanks

* Dragon Image was originally from [Stanislav](http://All-Silhouettes.com)




#### vim-airline [![Build Status](https://travis-ci.org/vim-airline/vim-airline.png)](https://travis-ci.org/vim-airline/vim-airline)

Lean &amp; mean status/tabline for vim that's light as air.

![img](https://github.com/vim-airline/vim-airline/wiki/screenshots/demo.gif)

# Features

*  Tiny core written with extensibility in mind ([open/closed principle][8]).
*  Integrates with a variety of plugins, including: [vim-bufferline][6],
   [fugitive][4], [unite][9], [ctrlp][10], [minibufexpl][15], [gundo][16],
   [undotree][17], [nerdtree][18], [tagbar][19], [vim-gitgutter][29],
   [vim-signify][30], [quickfixsigns][39], [syntastic][5], [eclim][34],
   [lawrencium][21], [virtualenv][31], [tmuxline][35], [taboo.vim][37],
   [ctrlspace][38] and more.
*  Looks good with regular fonts and provides configuration points so you can use unicode or powerline symbols.
*  Optimized for speed; it loads in under a millisecond.
*  Extensive suite of themes for popular color schemes including [solarized][23] (dark and light), [tomorrow][24] (all variants), [base16][32] (all variants), [molokai][25], [jellybeans][26] and others.
 Note these are now external to this plugin. See [below][46] for detail.
*  Supports 7.2 as the minimum Vim version.
*  The master branch tries to be as stable as possible, and new features are merged in only after they have gone through a [full regression test][33].
*  Unit testing suite.

## Straightforward customization

If you don't like the defaults, you can replace all sections with standard `statusline` syntax.  Give your statusline that you've built over the years a face lift.

![image](https://f.cloud.github.com/assets/306502/1009429/d69306da-0b38-11e3-94bf-7c6e3eef41e9.png)

## Themes

Themes have moved to
another repository as of [this commit][45].

Install the themes as you would this plugin (Vundle example):

```vim
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
```

See https://github.com/vim-airline/vim-airline-themes for more.

## Automatic truncation

Sections and parts within sections can be configured to automatically hide when the window size shrinks.

![image](https://f.cloud.github.com/assets/306502/1060831/05c08aac-11bc-11e3-8470-a506a3037f45.png)

## Smarter tab line

Automatically displays all buffers when there's only one tab open.

![tabline](https://f.cloud.github.com/assets/306502/1072623/44c292a0-1495-11e3-9ce6-dcada3f1c536.gif)

This is disabled by default; add the following to your vimrc to enable the extension:

    let g:airline#extensions#tabline#enabled = 1

Separators can be configured independently for the tabline, so here is how you can define "straight" tabs:

    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'

## Seamless integration

vim-airline integrates with a variety of plugins out of the box.  These extensions will be lazily loaded if and only if you have the other plugins installed (and of course you can turn them off).

#### [ctrlp.vim][10]
![image](https://f.cloud.github.com/assets/306502/962258/7345a224-04ec-11e3-8b5a-f11724a47437.png)

#### [unite.vim][9]
![image](https://f.cloud.github.com/assets/306502/962319/4d7d3a7e-04ed-11e3-9d59-ab29cb310ff8.png)

#### [tagbar][19]
![image](https://f.cloud.github.com/assets/306502/962150/7e7bfae6-04ea-11e3-9e28-32af206aed80.png)

#### [csv.vim][28]
![image](https://f.cloud.github.com/assets/306502/962204/cfc1210a-04eb-11e3-8a93-42e6bcd21efa.png)

#### [syntastic][5]
![image](https://f.cloud.github.com/assets/306502/962864/9824c484-04f7-11e3-9928-da94f8c7da5a.png)

#### hunks ([vim-gitgutter][29] & [vim-signify][30])
![image](https://f.cloud.github.com/assets/306502/995185/73fc7054-09b9-11e3-9d45-618406c6ed98.png)

#### [virtualenv][31]
![image](https://f.cloud.github.com/assets/390964/1022566/cf81f830-0d98-11e3-904f-cf4fe3ce201e.png)

#### [tmuxline][35]
![image](https://f.cloud.github.com/assets/1532071/1559276/4c28fbac-4fc7-11e3-90ef-7e833d980f98.gif)

#### [promptline][36]
![airline-promptline-sc](https://f.cloud.github.com/assets/1532071/1871900/7d4b28a0-789d-11e3-90e4-16f37269981b.gif)

#### [ctrlspace][38]
![papercolor_with_ctrlspace](https://cloud.githubusercontent.com/assets/493242/12912041/7fc3c6ec-cf16-11e5-8775-8492b9c64ebf.png)

## Extras

vim-airline also supplies some supplementary stand-alone extensions.  In addition to the tabline extension mentioned earlier, there is also:

#### whitespace
![image](https://f.cloud.github.com/assets/306502/962401/2a75385e-04ef-11e3-935c-e3b9f0e954cc.png)

## Configurable and extensible

#### Fine-tuned configuration

Every section is composed of parts, and you can reorder and reconfigure them at will.

![image](https://f.cloud.github.com/assets/306502/1073278/f291dd4c-14a3-11e3-8a83-268e2753f97d.png)

Sections can contain accents, which allows for very granular control of visuals (see configuration [here](https://github.com/vim-airline/vim-airline/issues/299#issuecomment-25772886)).

![image](https://f.cloud.github.com/assets/306502/1195815/4bfa38d0-249d-11e3-823e-773cfc2ca894.png)

#### Extensible pipeline

Completely transform the statusline to your liking.  Build out the statusline as you see fit by extracting colors from the current colorscheme's highlight groups.

![allyourbase](https://f.cloud.github.com/assets/306502/1022714/e150034a-0da7-11e3-94a5-ca9d58a297e8.png)

# Rationale

There's already [powerline][2], why yet another statusline?

*  100% vimscript; no python needed.

What about [vim-powerline][1]?

*  vim-powerline has been deprecated in favor of the newer, unifying powerline, which is under active development; the new version is written in python at the core and exposes various bindings such that it can style statuslines not only in vim, but also tmux, bash, zsh, and others.

# Where did the name come from?

I wrote the initial version on an airplane, and since it's light as air it turned out to be a good name.  Thanks for flying vim!

# Installation

This plugin follows the standard runtime path structure, and as such it can be installed with a variety of plugin managers:

*  [Pathogen][11]
  *  `git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline`
  *  Remember to run `:Helptags` to generate help tags
*  [NeoBundle][12]
  *  `NeoBundle 'vim-airline/vim-airline'`
*  [Vundle][13]
  *  `Plugin 'vim-airline/vim-airline'`
*  [Plug][40]
  *  `Plug 'vim-airline/vim-airline'`
*  [VAM][22]
  *  `call vam#ActivateAddons([ 'vim-airline' ])`
*  manual
  *  copy all of the files into your `~/.vim` directory

# Configuration

`:help airline`

The default setting of 'laststatus' is for the statusline to not appear until a split is created. If you want it to appear all the time, add the following to your vimrc:
`set laststatus=2`

# Integrating with powerline fonts

For the nice looking powerline symbols to appear, you will need to install a patched font.  Instructions can be found in the official powerline [documentation][20].  Prepatched fonts can be found in the [powerline-fonts][3] repository.

Finally, you can add the convenience variable `let g:airline_powerline_fonts = 1` to your vimrc which will automatically populate the `g:airline_symbols` dictionary with the powerline symbols.

# FAQ

Solutions to common problems can be found in the [Wiki][27].

# Performance

Whoa!  Everything got slow all of a sudden...

vim-airline strives to make it easy to use out of the box, which means that by default it will look for all compatible plugins that you have installed and enable the relevant extension.

Many optimizations have been made such that the majority of users will not see any performance degradation, but it can still happen.  For example, users who routinely open very large files may want to disable the `tagbar` extension, as it can be very expensive to scan for the name of the current function.

The [minivimrc][7] project has some helper mappings to troubleshoot performance related issues.

If you don't want all the bells and whistles enabled by default, you can define a value for `g:airline_extensions`.  When this variable is defined, only the extensions listed will be loaded; an empty array would effectively disable all extensions.

# Screenshots

A full list of screenshots for various themes can be found in the [Wiki][14].

# Maintainers

The project is currently being maintained by [Bailey Ling][41], [Christian Brabandt][42], and [Mike Hartington][44].

If you are interested in becoming a maintainer (we always welcome more maintainers), please [go here][43].

# License

MIT License. Copyright (c) 2013-2016 Bailey Ling.

[1]: https://github.com/Lokaltog/vim-powerline
[2]: https://github.com/Lokaltog/powerline
[3]: https://github.com/Lokaltog/powerline-fonts
[4]: https://github.com/tpope/vim-fugitive
[5]: https://github.com/scrooloose/syntastic
[6]: https://github.com/bling/vim-bufferline
[7]: https://github.com/bling/minivimrc
[8]: http://en.wikipedia.org/wiki/Open/closed_principle
[9]: https://github.com/Shougo/unite.vim
[10]: https://github.com/ctrlpvim/ctrlp.vim
[11]: https://github.com/tpope/vim-pathogen
[12]: https://github.com/Shougo/neobundle.vim
[13]: https://github.com/gmarik/vundle
[14]: https://github.com/vim-airline/vim-airline/wiki/Screenshots
[15]: https://github.com/techlivezheng/vim-plugin-minibufexpl
[16]: https://github.com/sjl/gundo.vim
[17]: https://github.com/mbbill/undotree
[18]: https://github.com/scrooloose/nerdtree
[19]: https://github.com/majutsushi/tagbar
[20]: https://powerline.readthedocs.org/en/master/installation.html#patched-fonts
[21]: https://bitbucket.org/ludovicchabant/vim-lawrencium
[22]: https://github.com/MarcWeber/vim-addon-manager
[23]: https://github.com/altercation/solarized
[24]: https://github.com/chriskempson/tomorrow-theme
[25]: https://github.com/tomasr/molokai
[26]: https://github.com/nanotech/jellybeans.vim
[27]: https://github.com/vim-airline/vim-airline/wiki/FAQ
[28]: https://github.com/chrisbra/csv.vim
[29]: https://github.com/airblade/vim-gitgutter
[30]: https://github.com/mhinz/vim-signify
[31]: https://github.com/jmcantrell/vim-virtualenv
[32]: https://github.com/chriskempson/base16-vim
[33]: https://github.com/vim-airline/vim-airline/wiki/Test-Plan
[34]: http://eclim.org
[35]: https://github.com/edkolev/tmuxline.vim
[36]: https://github.com/edkolev/promptline.vim
[37]: https://github.com/gcmt/taboo.vim
[38]: https://github.com/szw/vim-ctrlspace
[39]: https://github.com/tomtom/quickfixsigns_vim
[40]: https://github.com/junegunn/vim-plug
[41]: https://github.com/bling
[42]: https://github.com/chrisbra
[43]: https://github.com/vim-airline/vim-airline/wiki/Becoming-a-Maintainer
[44]: https://github.com/mhartington
[45]: https://github.com/vim-airline/vim-airline/commit/d7fd8ca649e441b3865551a325b10504cdf0711b
[46]: https://github.com/vim-airline/vim-airline#themes
