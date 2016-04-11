
$ErrorActionPreference = 'Stop';


$packageName= 'collectdwin'
$url        = 'https://github.com/bloomberg/collectdwin/releases/download/v0.5.8/CollectdWin-x64-0.5.8.0.msi'
$url64      = 'https://github.com/bloomberg/collectdwin/releases/download/v0.5.8/CollectdWin-x64-0.5.8.0.msi'


$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  silentArgs    = '/qn /norestart'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'collectdwin*'
  checksum      = 'B63A703EE6D582A635E2F5A92EADBC35'
  checksumType  = 'md5'
  checksum64    = 'B63A703EE6D582A635E2F5A92EADBC35'
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs

















