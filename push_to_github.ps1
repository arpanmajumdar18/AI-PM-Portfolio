# Helper script: configure git, commit, and push to GitHub
# Usage: run in PowerShell after installing Git

$repoUrl = "https://github.com/arpanmajumdar18/AI-PM-Portfolio.git"
$userName = "arpanmajumdar18"
$userEmail = "arpan.majumdar.ai@gmail.com"

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "Git is not installed or not in PATH. Install Git for Windows from https://git-scm.com/download/win" -ForegroundColor Red
    exit 1
}

# Configure user if not set (or override)
git config --global user.name "$userName"
git config --global user.email "$userEmail"

# Initialize repo if needed
if (-not (Test-Path ".git")) {
    git init
}

# Ensure remote origin is set to the requested URL
$hasRemote = $false
try {
    $existing = git remote get-url origin 2>$null
    if ($existing) { $hasRemote = $true }
} catch { }

if ($hasRemote) {
    git remote set-url origin $repoUrl
} else {
    git remote add origin $repoUrl
}

# Add all files
git add .

# Commit if there are staged changes
$status = git status --porcelain
if ($status) {
    git commit -m "chore: add README and portfolio files"
} else {
    Write-Host "No changes to commit." -ForegroundColor Yellow
}

# Create/rename branch to main and push
git branch -M main

try {
    git push -u origin main
    Write-Host "Pushed to $repoUrl" -ForegroundColor Green
} catch {
    Write-Host "Push failed. Check remote URL, authentication (PAT), and network." -ForegroundColor Red
    exit 1
}
