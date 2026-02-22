# Deploy My Website to GitHub Pages
# Run this script AFTER you create the repo on GitHub (see steps below).

param(
    [Parameter(Mandatory=$true)]
    [string]$RepoUrl
)

$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

# Remove existing origin if re-running
git remote remove origin 2>$null

git remote add origin $RepoUrl
git push -u origin main

Write-Host ""
Write-Host "Done! Enable GitHub Pages:"
Write-Host "  1. Open your repo on GitHub"
Write-Host "  2. Settings -> Pages -> Source: Deploy from a branch"
Write-Host "  3. Branch: main, Folder: / (root) -> Save"
Write-Host ""
Write-Host "Your site will be at: https://YOUR_USERNAME.github.io/REPO_NAME/" -ForegroundColor Green
