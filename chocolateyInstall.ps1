$version = "sc-4.5.0-win32"
$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
   -PackageName 'sauce-connect' `
   -UnzipLocation "$packDir" `
   -Url "https://saucelabs.com/downloads/$version.zip" `
   -Checksum '0dd3bafa85a8b7c5ad2bd19853ec7601033434136d47c82105dccf6043ee9335' `
   -ChecksumType 'sha256'

# avoid name conflict with the Windows Service Control (SC)
Rename-Item "$packDir/$version/bin/sc.exe" "sauce-connect.exe"
