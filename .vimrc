set viminfo='100000,<1000000,s2000000
:command! RandomLine execute 'normal! '.(system('/bin/bash -c "echo -n $RANDOM"') % line('$')).'G'

map R :RandomLine<CR>

