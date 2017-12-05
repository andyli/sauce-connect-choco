$version = "sc-4.4.10-win32"
$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
   -PackageName 'sauce-connect' `
   -UnzipLocation "$packDir" `
   -Url "https://saucelabs.com/downloads/$version.zip" `
   -Checksum 'c263fb3c16a852f9945c60e4a7ddd80eaa7ed56256df2195e07404ff33edc873' `
   -ChecksumType 'sha256'

# avoid name conflict with the Windows Service Control (SC)
Rename-Item "$packDir/$version/bin/sc.exe" "sauce-connect.exe"
