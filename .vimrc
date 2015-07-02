" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim74/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

""""""""""""""""""""""""""""""""""""""
"   vim configs I personally added   "
""""""""""""""""""""""""""""""""""""""

" Enable Pathogen plug-in manager
execute pathogen#infect()
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"	Amir Salihefendic
"
" Version:
"	5.0 - 29/05/12 15:43:36
"
" Awesome_version:
"	Get this config, nice color schemes and lots of plugins!
"	Install the awesome version from:
"		https://github.com/amix/vimrc
"
" Syntax_highlighted:
"	http://amix.dk/vim/vimrc.html
"
" Sections:
"	-> General
"	-> VIM user interface
"	-> Colors and Fonts
"	-> Files and backups
"	-> Text, tab and indent related
"	-> Visual mode related
"	-> Moving around, tabs and buffers
"	-> Status line
"	-> Editing mappings
"	-> vimgrep searching and cope displaying
"	-> Spell checking
"	-> Misc
"	-> Helper function
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" === GENERAL ===
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=800

" Enable siletype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from outside
set autoread


" With a map leader it's possibe to do extra key combinations
" like <leader>w saves the current file
let mapleader =","

" Fast saving
nmap <leader>w :w!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" === VIM USER INTERFACE ===
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set  wildmenu

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about case
set smartcase

" Highlight search results
set hlsearch

" Make seach act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How manu thents of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" === COLORS AND FONTS ===
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

colorscheme jellybeans
set background=dark

" Set extra options when running in GUI mode
if has ("gui_running")
	set guioptions-=T
	set guioptions+=e
	set t_Co=256
	set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and asn en_US ans the standard language
set encoding=utf8

" Use unix as the standard file type
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" === TEXT, TAB, AND INDENT RELATED ===
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use space instead of tabs
set expandtab

set smarttab

set shiftwidth=4
set tabstop=4

set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
