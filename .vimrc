colorscheme molokai

nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
:"vmap <c-u> <ESC>
"imap <c-u> <ESC>
imap <c-space> <c-x><c-o>
imap <C-J> <Plug>snipMateNextOrTrigger
" unmap <S-#>
nmap <S-#> <S-^>
noremap <space> za
nnoremap ,cd :cd %:p:h<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-a> <esc>ggVG<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" Commenting blocks of code.
autocmd FileType c,cpp,java,javascript let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> <c-c> :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <c-x> :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

syntax on
au BufReadPost *.hbs set syntax=html

set backspace=2
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set pastetoggle=<F2>
set foldmethod=indent
set foldlevel=99
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
set number
set ignorecase
" Always show status line
set laststatus=2
" Respect modeline in files
set modeline
set modelines=4
set mouse=a
" Show the cursor position
set ruler
" Show the filename in the window titlebar
set title
" Start scrolling three lines before the horizontal window border
set scrolloff=3
set pastetoggle=<F10>
set runtimepath+=~/.vim
set rtp+=~/.vim

autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript

let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules',
  \ }

let g:ctrlp_root_markers = ['gulpfile.js']

" bundle
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/yegappan/mru.git'
Plugin 'https://github.com/kien/ctrlp.vim.git'

Plugin 'scrooloose/nerdTree'

Plugin 'https://github.com/tomtom/tlib_vim.git'
Plugin 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Plugin 'pangloss/vim-javascript'

set rtp+=~/.vim/bundle/vundle/
call vundle#end()

filetype plugin indent on
filetype plugin on

