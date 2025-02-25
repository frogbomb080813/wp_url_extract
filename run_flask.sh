# PowerShell Script to Activate Virtual Environment and Run Flask

# Get the current path
$currentPath = Get-Location

# Activate the virtual environment
& "$currentPath\venv\Scripts\Activate.ps1"

# Run Flask development server
flask run
