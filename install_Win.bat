if not exist %HOMEDRIVE%%HOMEPATH%\_vimrc mklink %HOMEDRIVE%%HOMEPATH%\_vimrc %HOMEDRIVE%%HOMEPATH%\dotfiles\.vimrc
if not exist %HOMEDRIVE%%HOMEPATH%\_gvimrc mklink %HOMEDRIVE%%HOMEPATH%\_gvimrc %HOMEDRIVE%%HOMEPATH%\dotfiles\.gvimrc
if not exist %HOMEDRIVE%%HOMEPATH%\vimfiles\ mkdir %HOMEDRIVE%%HOMEPATH%\vimfiles

pause
