" options
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set smarttab
:set shiftwidth=4
:set mouse=a

" ctrl+s = save file
:map <C-s> :w<CR>

" ctrl+q = close (quit) file
:map <C-q> :qa<CR>

nnoremap <C-p> :P<CR>
nnoremap <C-y> :y<CR>

nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-t> :TerminalSplit bash<CR>


call plug#begin()

" status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" file explorer
Plug 'preservim/nerdtree'

" terminal
Plug 'tc50cal/vim-terminal'

" themes
Plug 'sainnhe/gruvbox-material'

call plug#end()


" airline config
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.maxlinenr = '] '
let g:airline_symbols.linenr = ' [LN.'
let g:airline_symbols.colnr = 'CN.'

" gruvbox config
if has('termguicolors')
    set termguicolors
endif

let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_foreground = 'material'

colorscheme gruvbox-material

" nerdtree config

" start nerdtree
autocmd VimEnter * if argc() > 0 && !isdirectory(argv()[0]) | NERDTree | wincmd p | endif

" vim terminal config
let g:Terminal_TERM = 'xterm'
