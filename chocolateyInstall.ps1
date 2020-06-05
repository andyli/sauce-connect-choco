$version = "sc-4.6.2-win32"
$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
   -PackageName 'sauce-connect' `
   -UnzipLocation "$packDir" `
   -Url "https://saucelabs.com/downloads/$version.zip" `
   -Checksum 'caaa2ff2c44d4cb58bd8a6d29121c2aef255aace68f609575d32c24e750beccc' `
   -ChecksumType 'sha256'

# avoid name conflict with the Windows Service Control (SC)
Rename-Item "$packDir/$version/bin/sc.exe" "sauce-connect.exe"
