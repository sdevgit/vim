execute pathogen#infect()
syntax on
filetype plugin indent on
execute pathogen#infect('$VIM/vimfiles/bundle/{}')

"Copy indent from current line.
set autoindent
"Write to file when changeing files.
set autowrite
"Allow backspace to work as it should.
set backspace=2
"Scan current, loaded and unloaded buffers for word completion.
set complete=.,b,u
"Height of command line/status.
set cmdheight=2
"Some vi compatibility options.
set cpoptions=ceFs$
"Dictionary to search for word completion.
"set dictionary=/usr/dict/words
"Directory to create swap files.
set dir=c:\Temp
"Expand tabs to spaces.
set expandtab
"By default substitute all.
set gdefault
"Enable incremental search.
set incsearch
"Always have status line.
set laststatus=2
"No need to redraw screen frequently.
set lazyredraw
"Hide the mouse while typing in the gui.
set mousehide
"No error bells.
set noerrorbells
"Not compatible with Vi.  Use Vim features.
set nocompatible
"Display line numbers.
set number
"Show row and column numbers above the status line.
set ruler
"Use short messages for the common ones.
set shortmess=a
"Indent visual display of very long lines which wrapped.
set showbreak=\ \ \ \ \ \ \ \ 
"Show matching bracket briefly.
set showmatch
"Display the current mode of the editor in the status line.
set showmode
"Number of spaces for each autoindent step.
set shiftwidth=4
"Use case only if capitals are also used.
set smartcase
"Wrap lines larger than 79 columns long.
set textwidth=79
"Set title of window to filename.
set title
"The number for spaces equivalent to <Tab>.
set tabstop=4
"Location of tags file.
"set tags=./tags,tags,~/tmp/tags
"Disable visual bell.
set visualbell t_vb=
"Wrap next line only on cursor movement.
set whichwrap=<,>,[,]
"Wrap long lines to fit in display.
set wrap
"Files to ignore for Tab completion.
if has("wildignore")
    set wildignore=*.o,*.a,*.class
endif
"Options for automatic formatting.
set formatoptions=otcql
if version >= 506
   "Show part of last line if too long.
    set display=lastline
    set complete=.,w,b,u
    set showfulltag
    set statusline=%<%f%y%m%r%=%l,%c%V\ %P
    set wildmenu
    "Set cscope options.
"    if has("cscope") && filereadable("cscope.out")
"        set cscopetagorder=1
"        set cscopetag
"        set nocscopeverbose
"        cscope add cscope.out
"        set cscopeverbose
"        map <C-_> :cstag <C-R>=expand("<cword>")<CR><CR>
"        map g<C-]> :cs find 3 <C-R>=expand("<cword>")<CR><CR>
"        map g<C-\> :cs find 0 <C-R>=expand("<cword>")<CR><CR>
"    endif
endif

" For c syntax for h files. Refer to filetypes.vim.
"let c_syntax_for_h=1

autocmd BufEnter *.* iabbr {: {}O
autocmd BufEnter *.* iabbr ==: ===============================================================================
autocmd BufEnter *.* iabbr --: -------------------------------------------------------------------------------
autocmd BufEnter *.* iabbr **: *******************************************************************************
"let myfiletypefile = "c:\\progra~1\\vim\\filetypes.vim"
"let mysyntaxfile = "c:\\progra~1\\vim\\syntax.vim"

"Switching between buffers.----------------------
map <Tab> :bn<CR>
map <S-Tab> :bp<CR>
map <C-Tab> :b#<CR>
imap <C-Tab> :b#<CR>a

"Save.-------------------------------------------
    map <F1> :w
    imap <F1> :wa
"Browse windows.---------------------------------
    map <F2> w
    imap <F2> wi
"Close windows.----------------------------------
    map <F3> :close
    imap <F3> :closei
"Exit--------------------------------------------
    map <F4> :qa
    imap <F4> :qa

"Emacs style command line edting.
" start of line
cnoremap <C-A>		<Home>
" back one character
cnoremap <C-B>		<Left>
" end of line
cnoremap <C-E>		<End>
" forward one character
cnoremap <C-F>		<Right>
" recall newer command-line
cnoremap <C-N>		<Down>
" recall previous (older) command-line
cnoremap <C-P>		<Up>

"For Win keyboard--------------------------------
"map <Home> I
"imap <Home> I
"map <End> A
"imap <End> A
"imap <PageUp> 
"imap <PageDown> 
"map <PageUp> 
"map <PageDown> 
"


"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"tab/buffer handling
set hidden

"
syntax enable
set background=dark
colorscheme solarized
