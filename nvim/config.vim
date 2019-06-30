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

" Icons
Plug 'ryanoasis/vim-webdevicons'

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
set encoding=utf8

" let g:webdevicons_enable = 1
" let g:webdevicons_enable_nerdtree = 1
" let g:webdevicons_enable_airline_tabline = 1
" let g:webdevicons_enable_airline_statusline = 1
" let g:WebDevIconsUnicodeDecorateFileNodes = 1
" let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" let g:webdevicons_conceal_nerdtree_brackets = 1
" let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
" let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'
" let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
" let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = 'ƛ'
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = 'ƛ'
" let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['MyReallyCoolFile.okay'] = 'ƛ'
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['myext'] = 'ƛ'

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('ts', 'none', 'none', '#59c2ff', 'none')
call NERDTreeHighlightFile('spec.ts', 'none', 'none', '#5ccfe6', 'none')
call NERDTreeHighlightFile('module.ts', 'none', 'none', '#ff3333', 'none')
call NERDTreeHighlightFile('pipe.ts', 'none', 'none', '#009688', 'none')
call NERDTreeHighlightFile('service.ts', 'none', 'none', '#ffcc66', 'none')
call NERDTreeHighlightFile('html', 'none', 'none', '#f29e74', 'none')
call NERDTreeHighlightFile('scss', 'none', 'none', '#f27983', 'none')
call NERDTreeHighlightFile('json', 'none', 'none', '#f29e74', 'none')
call NERDTreeHighlightFile('ico', 'none', 'none', '#ffee99', 'none')

let g:airline_powerline_fonts = 1
set nonumber
set nu
