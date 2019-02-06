$ErrorActionPreference='Stop'

$CurrentDirectory = [System.IO.Path]::GetDirectoryName($MyInvocation.MyCommand.Path)
Write-Host "Path: " $CurrentDirectory

$PathToActivateEnv = [System.IO.Path]::Combine($CurrentDirectory, 'env\Scripts\Activate.ps1')

Invoke-Expression "& '$PathToActivateEnv'"

pytest

exit $LASTEXITCODE


