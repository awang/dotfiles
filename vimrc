
syntax on
set nu
set expandtab
set smarttab
set autoindent
set shiftwidth=4
set sts=4
set textwidth=79
colorscheme peachpuff
if has("autocmd") " Only do this part when compiled with support for 'autocommands'.
    autocmd FileType python set ts=4 sw=4 et            " Python
    autocmd FileType ruby   set ts=2 sw=2               " Ruby
    autocmd FileType c,cpp  set ts=4 sw=4 cindent       " C & C++
    autocmd FileType javascript  set ts=2 sw=2 cindent et
    autocmd FileType docbk,html,xhtml,xml,css set ts=2 sw=2 " DocBook, HTML, XHTML, and XML
endif " has("autocmd")