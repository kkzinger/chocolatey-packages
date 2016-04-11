
$ErrorActionPreference = 'Stop';


$packageName= 'collectdwin'
$url        = 'https://github.com/bloomberg/collectdwin/releases/download/v0.5.14/CollectdWin-x64-0.5.14.0.msi'
$url64      = 'https://github.com/bloomberg/collectdwin/releases/download/v0.5.14/CollectdWin-x64-0.5.14.0.msi'


$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  silentArgs    = '/qn /norestart'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'collectdwin*'
  checksum      = '871AABD99450D0EFA721AD714E669573'
  checksumType  = 'md5'
  checksum64    = '871AABD99450D0EFA721AD714E669573'
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs

















