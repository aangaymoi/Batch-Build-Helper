mode 800

for /f "tokens=1 delims=" %%a in ('dir /b /s *.sln') do (
	call "d:\06. Tools\RandomDateTime.exe"
	%windir%\microsoft.net\framework\v4.0.30319\msbuild /m "%%a" /t:rebuild /p:Configuration=Release	
)

call ".sln.clean.bat"
call ".sln.clean.netobj.bat"

call "d:\06. Tools\SyncTime.exe"

@PAUSE