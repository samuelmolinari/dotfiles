filetype off
set nocompatible

call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdTree'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'mhinz/vim-signify'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'mileszs/ack.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'matze/vim-move'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-surround'
"Plug 'majutsushi/tagbar'
"Plug 'ternjs/tern_for_vim'
"Plug 'universal-ctags/ctags'
Plug 'ludovicchabant/vim-gutentags'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

filetype plugin indent on    " required
"let g:airline#extensions#gutentags#enabled = 1
let g:deoplete#enable_at_startup = 1
let g:ale_completion_enabled = 1
let g:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
set background=dark

let g:fzf_action = {
  \ 'ctrl-o': ':e' }

let mapleader = " "
set autoread
au CursorHold * checktime
set encoding=utf-8
set backspace=2
set backspace=indent,eol,start
set ruler
set cc=80
set tags=tags;/
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#fnamemod = ':t'
let g:tmux_navigator_no_mappings = 1
set mouse=a

highlight clear SignColumn

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>

vmap ∆ <Plug>MoveBlockDown
vmap ˚ <Plug>MoveBlockUp
nmap ∆ <Plug>MoveLineDown
nmap ˚ <Plug>MoveLineUp

set list listchars=tab:»·,trail:·
set modifiable
set tabstop=2     " a tab is four spaCes
set shiftwidth=2  " number of spaces to use for autoindenting
set softtabstop=2
set expandtab
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting

nnoremap ˙ :bprevious<CR>
nnoremap ¬ :bnext<CR>

map <Leader> <Plug>(easymotion-prefix)
" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <Leader>nt :NERDTreeToggle<CR>

syntax enable

set shell=zsh
set number

let g:ackprg = 'ack -s -H --nocolor --nogroup --column'
let g:ackhighlight = 1
let g:ack_mappings = {
  \ "t": "<C-W><CR><C-W>T",
  \ "T": "<C-W><CR><C-W>TgT<C-W>j",
  \ "o": "<CR>:noh<CR>",
  \ "O": "<CR><C-W><C-W>:ccl<CR>:noh<CR>",
  \ "go": "<CR><C-W>j",
  \ "h": "<C-W><CR><C-W>K",
  \ "H": "<C-W><CR><C-W>K<C-W>b",
  \ "v": "<C-W><CR><C-W>H<C-W>b<C-W>J<C-W>t",
  \ "gv": "<C-W><CR><C-W>H<C-W>b<C-W>J" }
let g:NERDTreeIndicatorMapCustom = {
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
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\node_modules$|\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

set termguicolors
let g:airline_theme='onedark'
let g:onedark_termcolors=256
colorscheme onedark

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
map <C-g> :Ag<CR>
map <C-p> :GFiles<CR>
map <C-b> :Buffers<CR>
imap jk <C-c>
imap jj <C-c>


let g:rustfmt_autosave = 1
set hidden
let g:racer_cmd = "$HOME/.cargo/bin/racer"
let g:racer_experimental_completer = 1
set noswapfile
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

"let g:tagbar_type_javascript = {
"      \ 'ctagstype': 'javascript',
"      \ 'kinds': [
"      \ 'A:arrays',
"      \ 'P:properties',
"      \ 'T:tags',
"      \ 'O:objects',
"      \ 'G:generator functions',
"      \ 'F:functions',
"      \ 'C:constructors/classes',
"      \ 'M:methods',
"      \ 'V:variables',
"      \ 'I:imports',
"      \ 'E:exports',
"      \ 'S:styled components'
"      \ ]}
