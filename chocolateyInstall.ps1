$version = "sc-4.4.12-win32"
$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
   -PackageName 'sauce-connect' `
   -UnzipLocation "$packDir" `
   -Url "https://saucelabs.com/downloads/$version.zip" `
   -Checksum 'ec11b4ee029c9f0cba316820995df6ab5a4f394053102e1871b9f9589d0a9eb5' `
   -ChecksumType 'sha256'

# avoid name conflict with the Windows Service Control (SC)
Rename-Item "$packDir/$version/bin/sc.exe" "sauce-connect.exe"
