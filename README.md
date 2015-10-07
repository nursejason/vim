Clone recursively to get submodules
`git submodule foreach --recursive git checkout master`

Rename old .vim folder
`mv .vim .oldvim`

Rename new vim folder
`mv vim .vim`

Rename old vimrc
`mv .vimrc .oldvimrc`

And finally copy new vimrc over
`cp .vim/.vimrc .vimrc
