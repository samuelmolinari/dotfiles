filetype off
set nocompatible
set shell=zsh
set number
set termguicolors

let mapleader = " "

call plug#begin()
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'scrooloose/nerdTree'
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'xuyuanp/nerdtree-git-plugin'
  Plug 'sheerun/vim-polyglot'
  Plug 'mhinz/vim-signify'
  Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
  Plug 'vim-airline/vim-airline'
  Plug 'edkolev/tmuxline.vim'
  Plug 'matze/vim-move'
call plug#end()

set list listchars=tab:»·,trail:·
set tabstop=2
set shiftwidth=2
set softtabstop=2

"seamless navigation between vim and tmux pane
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>

vmap ∆ <Plug>MoveBlockDown
vmap ˚ <Plug>MoveBlockUp
nmap ∆ <Plug>MoveLineDown
nmap ˚ <Plug>MoveLineUp

nnoremap ˙ :bprevious<CR>
nnoremap ¬ :bnext<CR>

map <C-g> :Ag<CR>
map <C-p> :GFiles<CR>
map <C-b> :Buffers<CR>
imap jk <C-c>
imap jj <C-c>

set termguicolors
colorscheme nightfly
"highlight clear SignColumn

map <Leader>nt :NERDTreeToggle<CR>

let g:NERDTreeGitStatusIndicatorMapCustom = {
  \ "Modified"  : "✹",
  \ "Staged"    : "✚",
  \ "Untracked" : "✭",
  \ "Renamed"   : "➜",
  \ "Unmerged"  : "═",
  \ "Deleted"   : "✖",
  \ "Dirty"     : "✗",
  \ "Clean"     : "✔︎",
  \ 'Ignored'   : '☒',
  \ "Unknown"   : "?"
  \ }

set rtp+=/opt/homebrew/opt/fzf
let g:fzf_action = {
  \ 'ctrl-o': ':e' }

