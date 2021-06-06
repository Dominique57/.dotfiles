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
" set laststatus=2
" set background=dark

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
set wildmenu        " open autocomplete menu on vim command
set showmatch       " show matching braces

" ----------------
" code wrap
set foldmethod=indent " code folding based on identation
set foldenable      " enable by default
set foldnestmax=7  " max nested code to wrap
set foldlevelstart=7
nnoremap <space> za

" main color theme
colorscheme badwolf


" ----------------
" Plug section
call plug#begin('~/.vim/plugged')
" IDE integration capability through visual studio LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Status bar (replace default vim bar)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Better tree view
Plug 'preservim/nerdtree'

" File finder
Plug 'junegunn/fzf'

" Line indentation helper line
Plug 'Yggdroot/indentLine'

" Smart line commenter
Plug 'preservim/nerdcommenter'

" Nice icons " commented because urxvt font icons are broken
Plug 'ryanoasis/vim-devicons'

" Add more and better language support
Plug 'sheerun/vim-polyglot'

call plug#end()

" ----------------
" remaps
inoremap ( ()<Left>
" inoremap { {}<Left><Cr><Tab><bs><Cr><Up><C-o>$
inoremap { {<Cr>!<Cr>}<Up><C-o>$<backspace>

" ------------
" cocnvim Settings
nmap <C-d> <Plug>(coc-definition)
nmap <C-i> <Plug>(coc-implementation)
nmap <C-r> <Plug>(coc-references)
nmap <C-Left> <Plug>(coc-diagnostic-prev)
nmap <C-Right> <Plug>(coc-diagnostic-next)

" Fuzzyfinder Settings
noremap <C-f> :FZF<Cr>

" Nerdcommenter Settings
" noremap <C-_> <Plug>NERDCommenterToggle
nnoremap <C-_> :call NERDComment("n", "Toggle")<CR><CR>
vnoremap <C-_> :call NERDComment("n", "Toggle")<CR>
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1
let g:NERDCustomDelimiters = {'c': {'left': '//'}, 'vim': {'left': '"' } }
