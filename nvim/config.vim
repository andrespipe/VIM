" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" ANGULAR
Plug 'sheerun/vim-polyglot'
" Language Completion and sintax validation
" CocInstall coc-json
" CocInstall coc-tsserver
" CocInstall coc-html
" CocInstall coc-css
" CocInstall coc-yaml
" CocInstall coc-highlight
" CocInstall coc-emmet
" CocInstall coc-angular
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
" Formating 
Plug 'sbdchd/neoformat'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree'

" GIT
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'xuyuanp/nerdtree-git-plugin'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'ayu-theme/ayu-vim'

" Initialize plugin system

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
   
call plug#end()

set termguicolors     " enable true colors support
let ayucolor="mirage" " for mirage version of theme
colorscheme ayu

" Status bar
let g:airline_theme='atomic'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])

" Text editor
set nonumber
set nu
