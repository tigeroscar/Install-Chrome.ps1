function Install-Chrome
{  
	$URI='http://dl.google.com/chrome/install/375.126/chrome_installer.exe';$ChromeInstaller=$env:TEMP+'ChromeInstaller.exe';Invoke-WebRequest -Uri $URI -OutFile $ChromeInstaller -ErrorAction SilentlyContinue;$ErrCode=(Start-Process -FilePath $ChromeInstaller -ArgumentList '/silent /install' -Wait -Passthru).ExitCode;Remove-Item $ChromeInstaller -ErrorAction SilentlyContinue -Force;Exit $ErrCode
}
