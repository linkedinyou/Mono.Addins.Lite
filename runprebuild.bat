C:\WINDOWS\Microsoft.NET\Framework\v3.5\msbuild Mono.Addins.sln /t:clean
rmdir /S /Q bin
Prebuild.exe /clean
Prebuild.exe /target vs2010
echo C:\WINDOWS\Microsoft.NET\Framework\v3.5\msbuild Mono.Addins.sln /p:Configuration=Release > compile.bat
