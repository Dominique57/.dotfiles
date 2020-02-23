" ----------------
" misc
set number          " show numbers on left of the lines
set lazyredraw      " perf option, dont update on macro
set clipboard=unnamedplus " make copying in global clipboard

" ----------------
" text options
set encoding=utf-8  " utf8 encoding for unicode
set scrolloff=3     " min number of lines top/bottom of cursor
syntax enable       " enable syntax highlight

" ----------------
" color status line options
set laststatus=2
set background=dark
colorscheme badwolf

" ----------------
" identation
" filetype indent on  " indent behaviour is linked to file type
set autoindent      " identation inherit previous line
set smartindent     " indentation react to code style
set cindent         " c indent style
set expandtab       " tabs to spaces
set tabstop=4       " tab equqals 4 space
set shiftwidth=4    " indent is 4 space
set smarttab        " del indent not spaces


" ----------------
" search
set hlsearch        " search highlighting
set incsearch       " show highl;ight during typing
set ignorecase      " ignore case when searching
set smartcase       " case sensitive if uppercase present


" ----------------
" config color bar
set colorcolumn=80  " colomn ofl colored column
highlight ColorColumn ctermbg=8 " :help ctermbg for colors

" ----------------
" config ui
set cursorline      " highlight current line
set noerrorbells    " disable sound on error
set title           " title of window is current edited file
set mouse=a         " enable mouse support
set listchars=tab:>-,eol:¬,trail:▓ list
" char to be shown
set wildmenu        " open autocomplete menu on wim command
set showmatch       " show matching braces

" ----------------
" code wrap
set foldmethod=indent " code folding based on identation
set foldenable      " enable by default
set foldnestmax=7  " max nested code to wrap
set foldlevelstart=7
nnoremap <space> za

" ----------------
" functions

imap <C-Left> <C-o><Right>b
nmap <C-Left> b
vmap <C-Left> b

imap <C-Right> <C-o><Right>w
nmap <C-Right> w
vmap <C-Right> w

" remaps
inoremap ( ()<Left>
inoremap { {}<Left><Cr><Up><Right><Cr><Tab><bs>

" ------------
" ALE Settings
noremap <C-d> :ALEDetail<CR>
noremap <C-Right> :ALENextWrap<CR>
noremap <C-Left> :ALEPreviousWrap<CR>

let g:custom_cpp_options = '-std=c++17 -Wall -Wextra'
let g:ale_cpp_clang_options = g:custom_cpp_options
let g:ale_cpp_clangcheck_options = g:custom_cpp_options
let g:ale_cpp_clangd_options = g:custom_cpp_options
let g:ale_cpp_clangtidy_options = g:custom_cpp_options
let g:ale_cpp_clazy_options = g:custom_cpp_options
let g:ale_cpp_cpplint_options = g:custom_cpp_options
let g:ale_cpp_flawfinder_options = g:custom_cpp_options
let g:ale_c_gcc_options = g:custom_cpp_options

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
