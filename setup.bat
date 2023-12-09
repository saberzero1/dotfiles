@echo off
echo ###########################################################################
echo #                 saberzero1's dotfiles (Windows edition)                 #
echo ###########################################################################
echo #                 https://github.com/saberzero1/dotfiles                  #
echo ###########################################################################
echo:

:: Print Windows version.
FOR /F "usebackq tokens=3,4,5" %%i IN (`REG query "hklm\software\microsoft\windows NT\CurrentVersion" /v ProductName`) DO echo You are running: %%i %%j %%k
echo:

:: check git

:: git clone/pull

:: git clone/pull submodules

:: install software

:: install configs

:: clean up

echo Done!
pause
