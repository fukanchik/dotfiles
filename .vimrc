" highlight searched text
set hlsearch

" Tab config - 4 spaces
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=0
set nosmarttab
set noautoindent
set nosmartindent

set viminfo='100000,<1000000,s2000000
:command! RandomLine execute 'normal! '.(system('/bin/bash -c "echo -n $RANDOM"') % line('$')).'G'
map R :RandomLine<CR>

