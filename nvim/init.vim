" +-------------+
" |   Plugins   |
" +-------------+
" Install plug.vim if not already found
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  " Install plug
  silent execute '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

  " Install plugins
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
  " Show git diff status in the sign column
  Plug 'airblade/vim-gitgutter'
  " Improved word object definition for better motions
  Plug 'chaoren/vim-wordmotion'
  " Run commands from vim in tmux
  Plug 'christoomey/vim-tmux-runner'
  " Linting support
  Plug 'dense-analysis/ale'
  " Improved tab functionality
  Plug 'gcmt/taboo.vim'
  " Test runner
  Plug 'janko-m/vim-test'
  " Fuzzy finder
  Plug 'junegunn/fzf'
  " Vim bindings for fzf
  Plug 'junegunn/fzf.vim'
  " Emoji suport in vim
  Plug 'junegunn/vim-emoji'
  " UI support for dadbob
  Plug 'kristijanhusak/vim-dadbod-ui'
  " Icons for nvim-tree
  Plug 'kyazdani42/nvim-web-devicons'
  " Tree explorer
  Plug 'kyazdani42/nvim-tree.lua'
  " Show indentation levels
  Plug 'lukas-reineke/indent-blankline.nvim'
  " Language support for a *bunch* of languages
  Plug 'sheerun/vim-polyglot'
  " Easily comment stuff out
  Plug 'tpope/vim-commentary'
  " Database explorer for vim
  Plug 'tpope/vim-dadbod'
  " Dotenv support
  Plug 'tpope/vim-dotenv'
  " Automatically add 'end' to code blocks
  Plug 'tpope/vim-endwise'
  " Git support
  Plug 'tpope/vim-fugitive'
  " Alternate files
  Plug 'tpope/vim-projectionist'
  " Github support
  Plug 'tpope/vim-rhubarb'
  " Detect tabs based on current file/directory
  Plug 'tpope/vim-sleuth'
  " Better support for 'surrounding' characters like braces or quotes
  Plug 'tpope/vim-surround'
  " Fancier status line
  Plug 'vim-airline/vim-airline'

  " Colour scheme
  Plug '~/.config/nvim/theme'
call plug#end()

" +-------------+
" |   General   |
" +-------------+
" Set color
set termguicolors
colorscheme kt

" Use the system clipboard
set clipboard=unnamed

" Replace concealed text with 1 character
set conceallevel=1

" Highlight the line the cursor is current on
set cursorline

" Hide buffers instead of unloading them
set hidden

" Ignore case in searches unless uppercase letters are included
set ignorecase smartcase

" Enable mouse support
set mouse+=a

" Don't wrap text that runs off screen
set nowrap

" Show the line number of the current line and other as relative to the current
set number relativenumber

" When the cursor is on a brace, show the pair
set showmatch

" Show tab characters as two spaces
set tabstop=2

" Set list mode for visible whitespace
set list listchars=space:⋅,tab:>-,trail:-,nbsp:+

" disable modelines to stop arbitrary code execution vulnerability
set modelines=0 nomodeline

" open splits to the right or below
set splitbelow splitright

" Enable gitgutter
let g:gitgutter_enabled = 1

" Set fancy fonts for airline
let g:airline_powerline_fonts = 1

" Autocommands to set filetype based on file extenstion
autocmd BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en_us
autocmd BufNewFile,BufRead COMMIT_EDITMSG setlocal spell

" Enable the use of an undofile
set undofile

" +---------------------+
" |   Useful keybinds   |
" +---------------------+
" Arrow function shortcut
imap <C-L> <SPACE>=><SPACE>

" Turn off highlighing of selected objects, like search results
nmap <silent> <LocalLeader>nh :nohls<CR>
" Wipeout all currently open buffers
nmap <silent> <LocalLeader>db :bufdo bwipeout<CR>
" Open a new tab
nmap <silent> <LocalLeader>tn :tabnew<CR>
" Source the vimrc file
nmap <silent> <LocalLeader>so :so $MYVIMRC<CR>
" Open the vimrc file in a new tab
nmap <silent> <LocalLeader>ec :tabnew ~/.config/nvim/init.vim<CR>
" Open the git blame for the current open buffer
nmap <silent> <LocalLeader>gb :Git blame<CR>
" Copy file name
nmap <silent> <LocalLeader>fn :let @*=expand("%")<CR>

" +---------------+
" |      ALE      |
" +---------------+
" when to lint
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_filetype_changed = 1

" add sign column emoticons
let g:ale_sign_error = 'e'
let g:ale_sign_warning = 'w'

" always show the sign column
let g:ale_sign_column_always = 1
let g:ale_set_higlights = 1

" message format
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" how to lint
let g:ale_linters = {
\  'javascript': ['eslint'],
\  'ruby': ['rubocop'],
\  'typescript': ['eslint']
\}

" what to fix and how
let g:ale_fixers = {
\  '*': ['trim_whitespace'],
\  'javascript': ['eslint'],
\  'ruby': ['rubocop'],
\  'typescript': ['eslint']
\}

" use bundler to allow rubocop to access project gems for linting
let g:ale_ruby_rubocop_executable = 'bundle'

" +---------------+
" |      FZF      |
" +---------------+
" Open fzf in the bottom 40% of the screen
let g:fzf_layout = { 'down': '40%' }

" Faster fzf fuzzy find respecting gitignore
let $FZF_DEFAULT_COMMAND = '((git ls-tree -r --name-only HEAD; git ls-files -o --exclude-standard) || find . -path "*/\.*" -prune -o -type f -print -o -type l -print | sed s/^..//) 2> /dev/null'

" Show preview of files in fzf
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

" C-h C-h for line completion
" Use ripgrep for total line completion
inoremap <expr> <c-h><c-h> fzf#vim#complete(fzf#wrap({
      \ 'prefix': '^.*$',
      \ 'source': 'rg -n ^ --color always',
      \ 'options': '--ansi --delimiter : --nth 3..',
      \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }
      \ }))

" Open fzf for file searching in the current directory
nmap <silent> <LocalLeader>p :Files<CR>

" Open fzf for file searching recently opened files
nmap <silent> <LocalLeader>fh :History<CR>

" Open fzf for searching vim command history
nmap <silent> <LocalLeader>lh :History:<CR>

" +-----------------+
" |   Test Runner   |
" +-----------------+
" Use tmux for running test files
let test#strategy = "vtr"

" Allows javascript tests to run
let test#javascript#jest#executable = 'yarn test:single'

" Run the entire test file
nmap <silent> <LocalLeader>rb :wa <bar> :TestFile<CR>
" Run the single test closest to the cursor
nmap <silent> <LocalLeader>rf :wa <bar> :TestNearest<CR>
" Run the most recent test again
nmap <silent> <LocalLeader>rl :wa <bar> :TestLast<CR>

" +---------------+
" |   Nvim Tree   |
" +---------------+
" Show indent markers for open directories
let g:nvim_tree_indent_markers = 1

" Show git status in the tree via highlighting
let g:nvim_tree_git_hl = 1

" Show a training slash on directories
let g:nvim_tree_add_trailing = 1

" Shortcut for opening nvim-tree
nmap <LocalLeader>nt :NvimTreeToggle<CR>

" Run nvim-tree startup function
lua << EOF
require'nvim-tree'.setup()
EOF

" +------------------+
" |   Vim Fugitive   |
" +------------------+
" function to open commit hash in browser within Gblame (vim-fugitive)
function! ChooseRepo()
  let l:lineString = @a

  let l:path = @z

  let l:commitDate = matchstr(l:lineString, '\v2\d{3}-\d{2}-\d{2}')
  let l:commitDateNumber = substitute(l:commitDate, '-', '', 'g')
  let l:commitHash = matchstr(l:lineString, '\v^\w+')

  return l:commitHash
endfunction

" Shortcut for opening a commit in the browser from inside Git blame
nmap <silent> <LocalLeader>o "zy<C-G> 0vt:"ay:GBrowse <C-R>=ChooseRepo()<CR><CR>

" +---------+
" |   FIN   |
" +---------+

