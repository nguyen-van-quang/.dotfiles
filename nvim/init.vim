language en_US
set encoding=UTF-8

syntax on
set termguicolors
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light= 'hard' " hard/medium/soft
set bg=light
colorscheme gruvbox

set guifont=FiraCode\ Nerd\ Font
set number
set relativenumber

" Display quotes in json files
let g:indentLine_setConceal = 0

set nofixendofline

let g:python3_host_prog = '/usr/local/bin/python3'

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'othree/html5.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
call plug#end()


" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']


set relativenumber

set smarttab
set cindent
set tabstop=4
set shiftwidth=4
" always uses spaces instead of tab characters
set expandtab


" Plug 'puremourning/vimspector'
let g:vimspector_enable_mappings = 'HUMAN'
" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)
" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

" Plug 'itchyny/lightline.vim'
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ],
      \ }
      \ }

" Setup for :find command
" https://youtu.be/XA2WjJbmmoM?t=378
set path+=**
set wildmenu
set wildignore+=comma,separated,list,of,file,patterns

nnoremap <silent> <Leader>f :Ag<CR>
