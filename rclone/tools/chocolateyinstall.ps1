
$ErrorActionPreference = 'Stop';

$packageName= 'rclone'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://downloads.rclone.org/rclone-v1.34-windows-386.zip'
$url64      = 'http://downloads.rclone.org/rclone-v1.34-windows-amd64.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  Url           = $url
  Url64Bit      = $url64

  softwareName  = 'rclone*'

  Checksum      = 'D549C9D83DD7E04B63296D2C02057540F641113B7FCF4A6C7FDDCF8537094FE2'
  ChecksumType  = 'sha256'
  Checksum64    = '9C91E2B5572FF2638256AAEA53ED8471778DCA603FD0192750A5EEB50233264C'
  ChecksumType64= 'sha256'

}

Install-ChocolateyZipPackage @packageArgs


















