function Initialize-GitRepository {
    param (
        [string]$RemoteUrl
    )
    
    if (-not $RemoteUrl) {
        $RemoteUrl = Read-Host "Enter the Git remote URL (e.g., https://github.com/user/repo.git)"
    }

    if (-not $RemoteUrl) {
        Write-Error "Remote URL is required. Exiting script."
        return
    }

    git init
    if ($LASTEXITCODE -ne 0) { Write-Error "Failed to initialize Git repository."; return }

    git add .
    if ($LASTEXITCODE -ne 0) { Write-Error "Failed to add files."; return }

    git commit -m "Initial commit"
    if ($LASTEXITCODE -ne 0) { Write-Error "Failed to commit files."; return }

    git remote add origin $RemoteUrl
    if ($LASTEXITCODE -ne 0) { Write-Error "Failed to add remote origin."; return }

    git push -u origin master
    if ($LASTEXITCODE -ne 0) { Write-Error "Failed to push to remote repository."; return }

    Write-Host "Git repository initialized and pushed to remote successfully!" -ForegroundColor Green
}

Initialize-GitRepository $args[0]
