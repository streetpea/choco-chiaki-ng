
$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = ''
$url64      = 'https://github.com/streetpea/chiaki-ng/releases/download/v1.9.1/chiaki-ng-windows-installer.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'chiaki-ng'

  checksum      = '42B9AE0FAB026BC8387C0345BDA04EA17ABE24340A89699D75ECCFCBE7712D1F'
  checksumType  = 'sha256'
  checksum64    = '42B9AE0FAB026BC8387C0345BDA04EA17ABE24340A89699D75ECCFCBE7712D1F'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

















