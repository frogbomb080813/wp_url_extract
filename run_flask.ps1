# PowerShell Script to Activate Virtual Environment, Run Flask, and Open in Default Browser

# Get the current path
$currentPath = Get-Location

# Navigate to the project directory
Set-Location $currentPath

# Activate the virtual environment
& "$currentPath\venv\Scripts\Activate.ps1"

# Run Flask development server
Start-Process powershell -ArgumentList 'flask run'

# Wait for a few seconds to ensure the server starts
Start-Sleep -Seconds 5

# Open the default browser with the Flask server URL
Start-Process "http://127.0.0.1:5000"
