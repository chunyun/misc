set number
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set smartindent

set laststatus=2
set statusline=%F

au BufNewFile,BufRead *.cu set ft=cu
au BufNewFile,BufRead *.cuh set ft=cu
au BufNewFile,BufRead *.cl set ft=opencl
au BufNewFile,BufRead *.ispc set ft=ispc
au BufNewFile,BufRead *.isph set ft=ispc

filetype plugin on

map <C-K> :pyf $HOME/AdditionalLibs/llvm/tools/clang/tools/clang-format/clang-format.py<CR>
imap <C-K> <ESC>:pyf $HOME/AdditionalLibs/llvm/tools/clang/tools/clang-format/clang-format.py<CR>i

let &colorcolumn="80" 
highlight ColorColumn ctermbg=Brown guibg=#2c2d27


call plug#begin('~/.vim/plugged')
" Plug 'altercation/vim-colors-solarized'    
Plug 'bronson/vim-trailing-whitespace'

" Unite
" "   depend on vimproc
" "   ------------- VERY IMPORTANT ------------
" "   you have to go to .vim/plugin/vimproc.vim and do a ./make
" "   -----------------------------------------
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/unite.vim'

let g:unite_source_history_yank_enable = 1
try
    let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
    call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry
" search a file in the filetree
nnoremap <space><space> :split<cr> :<C-u>Unite -start-insert file_rec/async<cr>
" " reset not it is <C-l> normally
:nnoremap <space>r <Plug>(unite_restart)


Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'

Plug 'junegunn/vim-easy-align'
" Easy align interactive
vnoremap <silent> <Enter> :EasyAlign<cr>

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
"Plug 'Nopik/vim-nerdtree-direnter'
map <C-n> :NERDTreeToggle<CR>
"let NERDTreeMapOpenInTab='<ENTER>'

call plug#end()

