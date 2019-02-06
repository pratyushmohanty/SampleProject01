$ErrorActionPreference='Stop'

$CurrentDirectory = [System.IO.Path]::GetDirectoryName($MyInvocation.MyCommand.Path)
Write-Host "Path: " $CurrentDirectory

$PathToActivateEnv = [System.IO.Path]::Combine($CurrentDirectory, 'env\Scripts\Activate.ps1')

Invoke-Expression "& '$PathToActivateEnv'"

$PathToTestFile = [System.IO.Path]::Combine($CurrentDirectory, 'test.py')

Invoke-Expression "& '$PathToTestFile'"

pep8 --max-line-length=120 app > pep8.log 

exit $LASTEXITCODE


