
function! BuildYCM(info)
  " - name: YouCompleteMe
  " - status: 'installed'
  if a:info.status == 'installed' || a:info.force
    !brew install cmake
    !python3 ./install.py --go-completer
  endif
endfunction

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
Plug 'dunstontc/vim-vscode-theme'
"Plug 'gertjanreynaert/cobalt2-vim-theme'
"Plug 'arcseldon/vim-cobalt2'

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
Plug 'ekalinin/Dockerfile.vim'
Plug 'StanAngeloff/php.vim'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'slim-template/vim-slim'

"Plug 'lifthrasiir/hangeul.vim'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'simnalamburt/vim-mundo'
Plug 'rhysd/committia.vim'
Plug 'tpope/vim-fugitive'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'deoplete-plugins/deoplete-go', { 'do': 'make' }
"Plug 'zchee/deoplete-jedi' "deoplete for python
Plug 'ycm-core/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'junegunn/vim-slash'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'junegunn/vim-easy-align'
Plug 'sgur/vim-editorconfig'

"Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'whiteinge/diffconflicts'
Plug 'ntpeters/vim-better-whitespace'

Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

"End plugin list --------------------------------------------------------------
call plug#end()


"vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'one'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1

"Mundo -- Undo tree visualization
set undofile
set undodir=~/.config/nvim/undo
nnoremap <F5> :MundoToggle

"deoplete
let g:deoplete#enable_at_startup = 1
"call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

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
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules|vendor)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }

" Use rg (ripgrep) for ctrlp indexing
if executable('rg')
  let g:ctrlp_user_command = 'rg %s -i --no-heading --files --color=never --glob ""'
  set grepprg=rg\ --color=never\ --vimgrep
endif

" Vim-go
let g:go_fmt_command = "goimports"
let g:go_metalinter_enabled = ['golint', 'errcheck']
let g:go_metalinter_autosave = 0
let g:go_metalinter_autosave_enabled = ['golint']
let g:go_auto_type_info = 1
let g:go_auto_info = 1
let g:go_auto_sameids = 0
let $USE_SYSTEM_GO=1
let g:go_info_mode = 'gopls'
let g:go_def_mode = 'gopls'
let g:go_referrers_mode = 'gopls'
let g:go_def_mode = 'gopls'
let g:go_rename_command = 'gopls'

" NERDTree
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 0
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

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" youCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_add_preview_to_completeopt = 1

" fzf
if has('nvim')
  tnoremap <a-a> <esc>a
  tnoremap <a-b> <esc>b
  tnoremap <a-d> <esc>d
  tnoremap <a-f> <esc>f
endif
let g:fzf_command_prefix = 'F'
let g:fzf_preview_window = '' " disable preview
"let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
let g:fzf_buffers_jump = 1
nnoremap f :FFiles<CR>
nnoremap b :FBuffers<CR>
nnoremap p :FLines<CR>
nnoremap h :FHistory<CR>
nnoremap rg :FRg<CR>
