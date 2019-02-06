$ErrorActionPreference='Stop'

Invoke-Expression "C:\Python37-32\python.exe -m venv env"

& .\env\Scripts\activate

pip install -r requirements.txt

exit $LASTEXITCODE