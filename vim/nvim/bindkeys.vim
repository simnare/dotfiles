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
