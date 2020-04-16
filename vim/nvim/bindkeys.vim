let mapleader = ','

cnoreabbrev W w
cnoreabbrev Ack! Ack

" CTRL+J breaks current line
nnoremap <C-J> a<CR><Esc>k$

" Folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

nnoremap <silent> <F8> :TagbarToggle<CR>

" Navigate windows by ALT+arrows
:tnoremap <A-left> <C-\><C-N><C-w>h
:tnoremap <A-down> <C-\><C-N><C-w>j
:tnoremap <A-up> <C-\><C-N><C-w>k
:tnoremap <A-right> <C-\><C-N><C-w>l
:inoremap <A-left> <C-\><C-N><C-w>h
:inoremap <A-down> <C-\><C-N><C-w>j
:inoremap <A-up> <C-\><C-N><C-w>k
:inoremap <A-right> <C-\><C-N><C-w>l
:nnoremap <A-left> <C-w>h
:nnoremap <A-down> <C-w>j
:nnoremap <A-up> <C-w>k
:nnoremap <A-right> <C-w>l

