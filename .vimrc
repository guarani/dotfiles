" Sources
"   - https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
"

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Removes highlight from search results when enter is pressed
:nnoremap <CR> :nohlsearch<CR><CR>

" Test comment

" Remove sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500

au BufReadPost *.ezt set syntax=html
:syntax on
set smartindent

" Make 1 tab == 4 spaces
set tabstop=4
set shiftwidth=4

" Use spaces instead of tabs
set expandtab

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
" Remember info about open buffers on close
set viminfo^=%


:ab teh the
:ab htemplate <html><CR><Tab><head><CR><Tab></head><CR><Tab><body><CR><CR><Tab></body><CR></html><Up><Up><Tab><Tab>
:ab htitle <title></title><Left><Left><Left><Left><Left><Left><Left><Left>
:ab hscriptext <script src=""></script><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
:ab hscript <script><CR><CR><Tab><Tab></script><Up><Tab><Tab><Tab>
:ab test <script><Down>
:ab hstyle <style><CR><CR><Tab><Tab></style><Up><Tab><Tab><Tab>

:ab jready $(function() {<CR><CR><Tab><Tab><Tab>});<Up><Tab><Tab><Tab><Tab>
:ab jreadytest $(function() {<CR><CR><Tab><Tab><Tab>});<Up><Tab><Tab><Tab><Tab>alert("Ready!");

iab ccom /*<CR><CR> */<Up><Tab>
