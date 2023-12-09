echo ╔═════════════════════════════════════════════════════════════════════════╗
echo ║                 saberzero1's dotfiles (Windows edition)                 ║
echo ╠═════════════════════════════════════════════════════════════════════════╣
echo ║                 https://github.com/saberzero1/dotfiles                  ║
echo ╚═════════════════════════════════════════════════════════════════════════╝

FOR /F "usebackq tokens=3,4,5" %%i IN (`REG query "hklm\software\microsoft\windows NT\CurrentVersion" /v ProductName`) DO echo You are running: %%i %%j %%k
