Param (
	[Parameter(Mandatory = $true)]
	[String]$VER,
	[String]$DIR
)

py -$VER -m virtualenv $DIR
Write-Output "Environment Set"
Write-Output "Python Version: " $VER
Write-Output "Destination Directory: " $DIR 