call plug#begin('~/.config/nvim/plugged')
  Plug 'airblade/vim-gitgutter'
  Plug 'chaoren/vim-wordmotion'
  Plug 'christoomey/vim-tmux-runner'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'farmergreg/vim-lastplace'
  Plug 'gcmt/taboo.vim'
  Plug 'janko-m/vim-test'
  Plug 'jeffkreeftmeijer/vim-dim'
  Plug 'jlanzarotta/bufexplorer'
  Plug 'jtratner/vim-flavored-markdown'
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf'
  Plug 'junegunn/vim-emoji'
  Plug 'keith/swift.vim'
  Plug 'mxw/vim-jsx'
  Plug 'pangloss/vim-javascript'
  Plug 'posva/vim-vue'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-projectionist'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-scripts/argtextobj.vim'
  Plug 'w0rp/ale'
call plug#end()

set dir=/tmp//
set hidden
set ignorecase
set mouse=
set number
set relativenumber
set ruler
set showmatch
set smartcase
set textwidth=0 nosmartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set undofile
set clipboard=unnamed
set background=dark
set nowrap

" disable modelines to stop arbitrary code execution vulnerability
set modelines=0
set nomodeline

autocmd BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en_us
autocmd BufNewFile,BufRead COMMIT_EDITMSG setlocal spell
autocmd QuickFixCmdPost *grep* cwindow

" trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd FileType javascript autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd FileType ruby autocmd BufWritePre <buffer> :%s/\s\+$//e
nnoremap <LocalLeader>W :%s/\s\+$//<cr>:let @/=''<CR>

imap <C-L> <SPACE>=><SPACE>

nmap <silent> <LocalLeader>ff :CtrlP<CR>
nmap <silent> <LocalLeader>gw :Ggrep <cword><CR>
nmap <silent> <LocalLeader>na :ALEToggle<CR>
nmap <silent> <LocalLeader>nf :NERDTreeFind<CR>
nmap <silent> <LocalLeader>ng :GitGutterToggle<CR>
nmap <silent> <LocalLeader>nh :nohls<CR>
nmap <silent> <LocalLeader>nt :NERDTreeToggle<CR>
nmap <silent> <LocalLeader>n<SPACE> :highlight clear ExtraWhitespace<CR>
nmap <silent> <LocalLeader><SPACE> :highlight ExtraWhitespace ctermbg=red guibg=red<CR>
nmap <silent> <LocalLeader>rb :wa <bar> :TestFile -strategy=neoterm<CR>
nmap <silent> <LocalLeader>rf :wa <bar> :TestNearest -strategy=neoterm<CR>
nmap <silent> <LocalLeader>rl :wa <bar> :TestLast -strategy=neoterm<CR>
nmap <silent> <LocalLeader>tt :TagbarToggle<CR>
nmap <silent> <LocalLeader>tf :TagbarOpen fj<CR>
nmap <silent> <LocalLeader>tc :TagbarClose<CR>
nmap <silent> <LocalLeader>p :Files<CR>
nmap <silent> <LocalLeader>bi :T bi<CR>
nmap <silent> <LocalLeader>bf :exec 'T '.getline('.')<CR>
nmap <silent> <LocalLeader>bl :T !!<CR>
nmap <silent> <LocalLeader>uf :T untilfail !!<CR>
vmap <silent> <LocalLeader>bf y:T <C-R>"<CR>
nmap <silent> <LocalLeader>ss :T ss<CR>
vmap <silent> <LocalLeader>ss y:T ss <C-R>"<CR>
nnoremap <LocalLeader>* :keepjumps normal! #*<CR>
nnoremap <LocalLeader># :keepjumps normal! *#<CR>
nmap <silent> <LocalLeader>o "zy<C-G> 0vt:"ay:Gbrowse <C-R>=ChooseRepo()<CR><CR>

let g:exchange_no_mappings=1
nmap <silent> cx <Plug>(Exchange)
xmap <silent> X <Plug>(Exchange)
nmap <silent> cxc <Plug>(ExchangeClear)
nmap <silent> cxx <Plug>(ExchangeLine)

nmap <silent> [q :cprevious<CR>
nmap <silent> ]q :cnext<CR>
nmap <silent> [Q :cfirst<CR>
nmap <silent> ]Q :clast<CR>

" Allows Ctrl-P to find hidden files like .env
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files = 40000

" Allows javascript tests to run
let test#javascript#jest#executable = 'yarn test:single'

" File and folder CtrlP exclusions. See https://github.com/kien/ctrlp.vim
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|node_modules$\|Pods$\|build$\|public/packs$',
  \ }

let g:wordmotion_prefix = '<LocalLeader>'
let g:wordmotion_mappings = {
\ 'b' : '<LocalLeader>bb',
\ }

" Sort tags in order of appearance by default
let g:tagbar_sort = 0

" ###### ALE ######

" when to lint
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_filetype_changed = 1

" how to lint
let g:ale_linters = {'ruby': ['rubocop']}

" add sign column emoticons
let g:ale_sign_error = 'e'
let g:ale_sign_warning = 'w'

" message format
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" always show the sign column
let g:ale_sign_column_always = 1
let g:ale_set_higlights = 1

" what to fix and how
let g:ale_fixers = {
\  'javascript': ['eslint'],
\  'ruby': ['rubocop']
\}

" fix on file save
let g:ale_fix_on_save = 1
" use bundler to allow rubocop to access project gems for linting
let g:ale_ruby_rubocop_executable = 'bundle'

" reset sign column background colors
highlight link ALEError SignColumn
highlight link ALEWarning SignColumn
highlight link ALEErrorSign SignColumn
highlight link ALEWarningSign SignColumn

" faster fzf fuzzy find respecting gitignore
let $FZF_DEFAULT_COMMAND = '((git ls-tree -r --name-only HEAD; git ls-files -o --exclude-standard) || find . -path "*/\.*" -prune -o -type f -print -o -type l -print | sed s/^..//) 2> /dev/null'

" open splits to the right or below
set splitbelow
set splitright

" Fix highlighting in vue
autocmd FileType vue syntax sync fromstart

let g:gitgutter_enabled = 1

" Set colors
colorscheme Dim
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

hi MatchParen cterm=bold ctermbg=none ctermfg=14

" Use tmux for running test files
let test#strategy = "vtr"
nmap <silent> <LocalLeader>rb :wa <bar> :TestFile<CR>
nmap <silent> <LocalLeader>rf :wa <bar> :TestNearest<CR>
nmap <silent> <LocalLeader>rl :wa <bar> :TestLast<CR>

" Useful Keybinds
nmap <silent> <LocalLeader>db :bufdo bwipeout<CR>
nmap <silent> <LocalLeader>tn :tabnew<CR>
nmap <silent> <LocalLeader>so :so $MYVIMRC<CR>
nmap <silent> <LocalLeader>ec :tabnew ~/.my_nvimrc<CR>
nmap <silent> <LocalLeader><LocalLeader> <C-^>
nmap <silent> <LocalLeader>fh :History<CR>
nmap <silent> <LocalLeader>lh :History:<CR>
nmap <silent> <LocalLeader>gb :Gblame<CR>

" Copy file name
nmap <silent> <LocalLeader>fn :let @*=expand("%")<CR>

" Create beforeEach block easily
nnoremap <silent> <LocalLeader>bb obeforeEach(() => {<C-M>});<C-M><ESC>kO

" SHOW PREVIEW OF FILE IN FZF
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

" itSlowly shortcut
nmap <silent> <LocalLeader>is 0f(iSlowly<ESC>2f(iasync<SPACE><ESC>

" C-h C-h for line completion
" Use ripgrep for total line completion
inoremap <expr> <c-h><c-h> fzf#vim#complete(fzf#wrap({
      \ 'prefix': '^.*$',
      \ 'source': 'rg -n ^ --color always',
      \ 'options': '--ansi --delimiter : --nth 3..',
      \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }
      \ }))

" function to open commit hash in browser within Gblame (vim-fugitive)
function! ChooseRepo()
  let l:lineString = @a

  let l:path = @z

  let l:commitDate = matchstr(l:lineString, '\v2\d{3}-\d{2}-\d{2}')
  let l:commitDateNumber = substitute(l:commitDate, '-', '', 'g')
  let l:commitHash = matchstr(l:lineString, '\v^\w+')

  return l:commitHash
endfunction
nmap <silent> <LocalLeader>o "zy<C-G> 0vt:"ay:Gbrowse <C-R>=ChooseRepo()<CR><CR>
