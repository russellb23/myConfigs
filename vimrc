set nocompatible                        "required
filetype off                            "required
set splitbelow
set splitright
set hlsearch
set incsearch
set showmatch
set nu
set background=dark
set encoding=utf-8
set backspace=indent,eol,start
"syntax enable
set showmatch

" Column limit
set colorcolumn=79

" Code folding
set foldmethod=indent 
set foldlevel=99
set relativenumber
" Setting tabnames with file names
let titlestring = @%
set title

" let python_highlight_all=1
" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Open NERDTree
map <C-n> :NERDTreeToggle<CR>

" Execute Python script
"imap <F5> <Esc>:w<CR>:!clear;python3 %<CR>
" PEP 8 indentation for python
autocmd BufNewFile,BufRead *.py,*.pyc,*.pyw,*.c,*.h
    \ set tabstop=4
    \| set softtabstop=4
    \| set shiftwidth=4
    \| set textwidth=79
    \| set expandtab
    \| set autoindent
    \| set fileformat=unix


" Full stack indentation definition
autocmd BufNewFile,BufRead *.js,*.html,*.css
    \| set tabstop=2
    \| set softtabstop=2
    \| set shiftwidth=2

" Execute python script under buffer 
" autocmd BufWinEnter *.py,*.pyc nnoremap <C-p>> :w<CR>:!python3 %:p<CR>
" noremap <F12> :w \| !clear && echo "% is running..." && python3 %<CR>
noremap <F12> :w !python3 %<CR>
noremap <F11> :call system('python3 %')
" VIM output in a split window
" command R !clear && echo "% is running..." && python3 %<CR>


" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
"Plug 'tpope/vim-sensible'
"Plug 'junegunn/seoul256.vim'
Plug 'w0rp/ale'

"Plug 'Shougo/deoplete.nvim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
"let g:deoplete#enable_at_startup=1

" Plug 'maralla/completor.vim'
" Plug 'liuchengxu/space-vim-dark'
" Syntax checking for vim
" Plug 'vim-syntastic/syntastic'

" Python mode for professional python development
" Plug 'python-mode/python-mode'
", { 'branch': 'develop' }
" let g:pymode_python = 'python3'

" Code folding
Plug 'tmhedberg/SimpylFold'

" CSS colour show
Plug 'ap/vim-css-color'
" For showing line indention guide
Plug 'Yggdroot/indentLine'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'

Plug 'Valloric/YouCompleteMe'
" , { 'do' : '~/.vim/plugged/YouCompleteMe/install.py --gocode-completer --tern-completer' }
"Plug 'skammer/vim-css-color'
"Plug 'https://github.com/JarrodCTaylor/vim-shell-executor'
Plug 'agude/vim-eldar'
Plug 'fatih/molokai'
Plug 'enricobacis/vim-airline-clock'
Plug 'pangloss/vim-javascript'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Completor
let g:completor_python_binary = '/home/russellb/russell/Python/Audio/playAudio/lib/python3.5/site-packages/jedi'
" let g:deoplete#enable_at_startup = 1
  
" ALE linter
let g:ale_linters = { 'python': ['pyflakes', 'pep8'], 'javascript': ['eslint'] }
let g:ale_completion_enabled = 1

let g:ale_fixers = { 'javascript': ['eslint'], 'python': ['autopep8'] }

" Indentline enabled at statup
let g:indentLine_enabled = 1

" Airline clock

" Javascript syntax highlighting
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" let g:completor_auto_trigger = 1
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Enable the whole pymode plugin
"let g:pymode = 1

 "let g:pymode_indent = 1

" Enable vim motion
"let g:pymode_motion = 1

" VENV path
"VIRTUAL_ENV='/home/russellb/russell/Python/playGround/:/home/russellb/russell/Python/Audio/playAudio/:/home/russellb/russell/VueJS/flaskvue/backend/flaskenv/'
"let g:pymode_virtualenv_path = '/home/russellb/russell/Python/Audio/playAudio/'
" let g:pymode_virtualenv = 1

" Run code script
"let g:pymode_run = 1

" Bind keys to run the script
" let g:pymode_run_bind = '<F10>'

" Breakpoints
 let g:pymode_breakpoint = 1

" Keybind breakpoints
 let g:pymode_breakpoint_bind = '<C-b>'


" Folding
" let g:pymode_folding = 1

" PEP8 indentation
" let g:pymode_indent = 1

" Check code on the fly
" let g:pymode_lint_on_fly = 0
" let g:pymode_lint_message = 1

" Code checkers
" let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint']

" Syntax highlighting Colour scheme
if has('syntax')
    syntax enable 
    silent! colorscheme eldar
endif

