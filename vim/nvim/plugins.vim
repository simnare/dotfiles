"vim-plug
call plug#begin('~/.config/nvim/plugged')

"Plugin list ------------------------------------------------------------------

Plug 'altercation/vim-colors-solarized'
"Plug 'vim-scripts/Mustang2'
"Plug 'vim-scripts/darktango.vim'
"Plug 'junegunn/seoul256.vim'
"Plug 'vim-scripts/xoria256.vim'
"Plug 'jdkanani/vim-material-theme'
Plug 'rakr/vim-one'
Plug 'gertjanreynaert/cobalt2-vim-theme'

Plug 'godlygeek/tabular'
Plug 'pangloss/vim-javascript'
Plug 'achimnol/python-syntax'
Plug 'plasticboy/vim-markdown'
Plug 'othree/html5.vim'
Plug 'lepture/vim-jinja'
Plug 'cakebaker/scss-syntax.vim'
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'digitaltoad/vim-pug'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'leafgarland/typescript-vim'
Plug 'digitaltoad/vim-pug'
Plug 'posva/vim-vue'
Plug 'briancollins/vim-jst'
Plug 'vim-scripts/todo-txt.vim'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'

"Plug 'lifthrasiir/hangeul.vim'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'simnalamburt/vim-mundo'
Plug 'rhysd/committia.vim'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-jedi'
Plug 'junegunn/vim-slash'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'junegunn/vim-easy-align'
Plug 'sgur/vim-editorconfig'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'whiteinge/diffconflicts'
Plug 'ntpeters/vim-better-whitespace'


"End plugin list --------------------------------------------------------------
call plug#end()


"vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'one'

"Mundo -- Undo tree visualization
set undofile
set undodir=~/.config/nvim/undo
nnoremap <F5> :MundoToggle

"deoplete
let g:deoplete#enable_at_startup = 1

"vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Ale settings
let g:ale_linters = {
\    'haskell': ['stack-build', 'hlint'],
\    'rust': ['cargo'],
\    'javascript': ['standard'],
\    'go': ['goimports', 'gometalinter'],
\}

let g:ale_fixers = {
\   'javascript': ['standard'],
\   'go': ['goimports'],
\}
let g:ale_fix_on_save = 1
let g:ale_echo_msg_error_str = 'ERROR'
let g:ale_echo_msg_warning_str = 'WARN'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = "◉"
let g:ale_sign_warning = "◉"
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

" CtrlP
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules|vendor)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }

" Vim-go
let g:go_fmt_command = "goimports"
let g:go_metalinter_enabled = ['golint', 'errcheck']
let g:go_metalinter_autosave = 0
let g:go_metalinter_autosave_enabled = ['golint']
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1

" NERDTree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 0
let g:NERDTreeWinSize = 30
map <C-\> :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>

" Emmet
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" Whitespace
autocmd FileType yaml,javascript,html,php EnableStripWhitespaceOnSave
