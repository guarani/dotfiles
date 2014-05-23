au BufReadPost *.ezt set syntax=html
:syntax on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

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
