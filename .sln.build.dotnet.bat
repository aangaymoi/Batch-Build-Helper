mode 800

for /f "tokens=1 delims=" %%a in ('dir /b /s *.sln') do (
	call "d:\06. Tools\RandomDateTime.exe"
	dotnet build "%%a" -c Release	
)

call ".sln.clean.bat"
call ".sln.clean.netobj.bat"

call "d:\06. Tools\SyncTime.exe"

@PAUSE