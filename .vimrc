set nocompatible              " be iMproved, required
filetype on                   " required
filetype plugin on
filetype indent on

" reload files changed outside VIM
set autoread 
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci

" syntax highlighting 
syntax on

"set t_RB='t_RB'
hi Comment ctermfg=DarkBlue

"python helping
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4


set number  " show line numbers
set ignorecase 
set smartcase
set backspace=indent,eol,start
set omnifunc=syntaxcomplete#Complete
set autoread  "Reload files changed outside of vim
set tabstop=4 "setting the tabs to 4 spcaes

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.jsx,*.js setlocal tabstop=2 shiftwidth=2 softtabstop=2
" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

"This unsets the last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>

"Beginning Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

"easy alignment
Plug 'https://github.com/junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

"autocomplete
Plug 'Valloric/YouCompleteMe'

"for folding in python
Plug 'tmhedberg/SimpylFold'

"css syntax
Plug 'hail2u/vim-css3-syntax'

"html like abbreviation support
Plug 'mattn/emmet-vim'

"Solidity syntax highlighting
Plug 'tomlion/vim-solidity'

"file explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"UltiSnips - The ultimate snippet solution for Vim.
Plug 'SirVer/ultisnips'

"tag completion
Plug 'alvan/vim-closetag'

call plug#end()

"set simplyFold setting
set foldmethod=indent 

"youcompleteme settings
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string


"UltiSnips
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file


