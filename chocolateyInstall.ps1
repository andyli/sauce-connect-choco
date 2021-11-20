$version = "sc-4.7.1-win32"
$packDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage `
   -PackageName 'sauce-connect' `
   -UnzipLocation "$packDir" `
   -Url "https://saucelabs.com/downloads/$version.zip" `
   -Checksum 'a7624dae34e6ce73a05494e5104234748e9cec3f6b348674e4baccd4dbc770e4' `
   -ChecksumType 'sha256'

# avoid name conflict with the Windows Service Control (SC)
Rename-Item "$packDir/$version/bin/sc.exe" "sauce-connect.exe"
