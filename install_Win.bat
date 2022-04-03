set currentdir=%~dp0
if not exist %HOMEDRIVE%%HOMEPATH%\_vimrc mklink %HOMEDRIVE%%HOMEPATH%\_vimrc %currentdir%\.vimrc
if not exist %HOMEDRIVE%%HOMEPATH%\_gvimrc mklink %HOMEDRIVE%%HOMEPATH%\_gvimrc %currentdir%\.gvimrc
if not exist %HOMEDRIVE%%HOMEPATH%\vimfiles\ mkdir %HOMEDRIVE%%HOMEPATH%\vimfiles

pause
