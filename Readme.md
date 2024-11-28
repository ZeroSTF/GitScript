# GitScript

A simple PowerShell script to initialize a Git repository, add files, commit, set a remote origin, and push to the `master` branch.

## Features
- Initializes a Git repository.
- Adds all files and commits them with a message.
- Sets the remote origin and pushes to `master`.

## Installation
1. Save the script (`gitscript.ps1`) to a permanent location (e.g., `C:\Scripts`).
2. Add the folder to your system's PATH:
   - Open "Environment Variables" in Windows.
   - Edit the `Path` variable under "System variables" and add the folder path (e.g., `C:\Scripts`).

## Usage
Run the script from the project folder in PowerShell:

```powershell
gitscript.ps1
```
Or run it from any folder, and add the project path as an argument (also adding the repository URL as an argument is optional):

```powershell
gitscript.ps1 "C:\Path\To\Your\Folder" "https://github.com/your-username/your-repo.git"
```



