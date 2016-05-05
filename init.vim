call plug#begin('~/.vim/plugged')
"common
Plug 'freitass/todo.txt-vim'
Plug 'Valloric/YouCompleteMe'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'gmarik/Vundle.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'
"HTML
Plug 'gregsexton/MatchTag', { 'for': ['html', 'javascript'] }
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript', 'css'] }
Plug 'othree/html5.vim', { 'for': ['html', 'javascript'] }
Plug 'tpope/vim-haml', { 'for': 'haml'}
"CSS/LESS
Plug 'ap/vim-css-color', { 'for': ['css', 'scss', 'sass', 'less'] }
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss', 'sass'] }
Plug 'groenewege/vim-less', { 'for': 'less' }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css', 'scss'] }
"Jade
Plug 'digitaltoad/vim-jade'
" Handlebars
Plug 'mustache/vim-mustache-handlebars'
"JavaScript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'maksimr/vim-jsbeautify', { 'for': 'javascript' }
Plug 'wizicer/vim-jison', { 'for': 'jison' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'ternjs/tern_for_vim'
Plug 'heavenshell/vim-jsdoc' " Plugin to genereate jsdoc type :JsDoc on
                             " on function line
"Themes
Plug 'altercation/vim-colors-solarized'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'chriskempson/vim-tomorrow-theme'
"Markdown
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
"Go lang
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'nsf/gocode',  { 'for': 'go' }
"Ruby
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
" Check tool
Plug 'scrooloose/syntastic'

" Can comment all blick wiht ctrl-shift "-" "-"
Plug 'tomtom/tcomment_vim'
call plug#end()

" Settings
set background=dark
colorscheme gruvbox
let g:vimwiki_list = [{'path': '$HOME/Dropbox/wiki'}]

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number
set relativenumber

set wildmenu " enhanced command line completion
set hidden " current buffer can be put into background
set showcmd " show incomplete commands
set cmdheight=1 " command bar height

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

set nocompatible " not compatible with vi

" make backspace behave in a sane manner
set backspace=indent,eol,start
"find a word

" set a map leader for more key combos
let g:mapleader = ','
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

:nnoremap <F5> :buffers<CR>:buffer<Space>

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

set noerrorbells                " No beeps
set novisualbell
set noswapfile                  " Don't use swapfile
set nobackup                   " Don't create annoying backup files
set splitright                  " Split vertical windows right to the current
"windows
set splitbelow                  " Split horizontal windows below to the
"current windows
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats

""http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
" works only for OS X
let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin' || os == 'Mac'
  set clipboard^=unnamed
  set clipboard^=unnamedplus"
endif

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers

set showmatch " show matching braces

"Airline options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='bubblegum'

inoremap jj <Esc>

" My key maps {{{
    " Cancel hlsearch by pressing double <SPACE>
    nmap <SPACE> :noh <CR>
    " }}}

" JsDoc plugin config
"
" JsDoc config {{{
  " underscore starting function is pivate
  let g:jsdoc_underscore_private=1
  " enable JS6 shorthand functions
  let g:jsdoc_enable_es6=1
  " Allow prompt for interactive input.
  let g:jsdoc_allow_input_prompt=0
  " Prompt for a function description
  let g:jsdoc_input_description=1
  " Prompt for a value for @name, add it to the JSDoc block comment along with the @function tag.
  let g:jsdoc_additional_descriptions=1
" }}}

" Synastic {{{
" Syntastic configs
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '🤔'
let g:syntastic_warning_symbol = '😱'
let g:syntastic_style_warning_symbol = '💩'

let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_coffee_checkers = ['coffeelint']
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_html_tidy_ignore_errors = [" proprietary attribute \"ng-"]
let g:syntastic_haml_checkers = ['haml_lint']
" let g:syntastic_mode_map = { 'mode': 'active',
"                            \ 'active_filetypes': ['ruby', 'javascript', 'coffee', 'haml'],
"                            \ 'passive_filetypes': ['html'] }

highlight link SyntasticErrorSign        SignColumn
highlight link SyntasticWarningSign      SignColumn
highlight link SyntasticStyleErrorSign   SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" }}}


"Open NERDTree with Ctrl-n
map <C-n> :NERDTreeToggle<CR>
nmap <leader>ne :NERDTree<cr>
nmap <leader>nt :NERDTree<cr>
nmap <leader>nq :NERDTreeClose<cr>
"set timeout
set timeoutlen=1000
"set ttimeout
set ttimeoutlen=50

"Emmet settings
let g:user__install_global = 0
autocmd FileType html,css EmmetInstall

"Beautify js, html, css with ctrl-f
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType scss noremap <buffer> <c-f> :call CSSBeautify()<cr>

"react settings
let g:jsx_ext_required = 0

" nvim setup
" workaround for https://github.com/neovim/neovim/issues/2048
 if has('nvim')
     nmap <BS> <C-W>h
 endif

" Map ctrl-movement keys to window switching
map <silent> <C-h> :call WinMove('h')<cr>
map <silent> <C-j> :call WinMove('j')<cr>
map <silent> <C-k> :call WinMove('k')<cr>
map <silent> <C-l> :call WinMove('l')<cr>

" move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

" vim: set sw=4 sts=4 et fdm=marker:
