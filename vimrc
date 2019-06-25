set encoding=utf-8
let g:ycm_server_python_interpreter = "/usr/bin/python"
let vim_markdown_preview_github=1

set number relativenumber

" Snippets
let g:UltiSnipsExpandTrigger="<C-k>"
let g:UltiSnipsJumpForwardTrigger="<C-k>"
let g:UltiSnipsJumpBackwardTrigger="<C-j>"

let g:UltiSnipsEditSplit="vertical"

let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100
cnoremap jk <ESC>
cnoremap kj <ESC>

:set tabstop=2
:set shiftwidth=0
:set expandtab

" Statusline
let g:airline_powerline_fonts = 1
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" PlugInstall
call plug#begin ()
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'scrooloose/nerdtree'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'junegunn/fzf.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'zhou13/vim-easyescape'
	Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
	Plug 'dhruvasagar/vim-table-mode'
  Plug 'Valloric/YouCompleteMe'
call plug#end ()

" Startup
set number

" Shortcuts
map <tab>: <C-W>

" Shortcuts
function MakeCTags()
	normal! !ctags -R
endfunction

" Save folds
au BufWinLeave * mkview
au BufWinEnter * silent loadview

" Save marks
set viminfo
