# Mise en place complète du poste pour le TP1 (Windows PowerShell).
# Usage : powershell -ExecutionPolicy Bypass -File scripts\setup.ps1
$ErrorActionPreference = "Stop"
Set-Location (Join-Path $PSScriptRoot "..")

Write-Host "1/4 Vérification de Python"
if (Test-Path ".venv\Scripts\python.exe") {
    & .\.venv\Scripts\python.exe --version
} else {
    py -3.11 --version
}
if ($LASTEXITCODE -ne 0) { throw "Python indisponible : installer Python 3.11." }

Write-Host "2/4 Création de l'environnement virtuel"
if (-not (Test-Path ".venv")) { py -3.11 -m venv .venv }
if ($LASTEXITCODE -ne 0) { throw "Échec de création de l'environnement virtuel." }
& .\.venv\Scripts\Activate.ps1

Write-Host "3/4 Installation des dépendances"
python -m pip install --upgrade pip
if ($LASTEXITCODE -ne 0) { throw "Échec de mise à jour de pip." }
python -m pip install -r requirements.txt
if ($LASTEXITCODE -ne 0) { throw "Échec d'installation des dépendances ; requirements.lock conservé." }
$LockedPackages = python -m pip freeze
if ($LASTEXITCODE -ne 0) { throw "Échec de génération du verrouillage." }
$LockedPackages | Out-File -Encoding utf8 requirements.lock

Write-Host "4/4 Diagnostic"
python scripts\check_setup.py
exit $LASTEXITCODE
