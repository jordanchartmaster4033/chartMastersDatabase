# Define your repository's local directory
$repoDirectory = "I:\My Drive\Chart Master Files\chartMastersDatabase\chartMastersDatabase"

# Change to your repository's directory
Set-Location -Path $repoDirectory

# Check for uncommitted changes
$gitStatus = git status --porcelain
if ($gitStatus) {
    # If there are changes, configure Git (if necessary)
    git config user.email "jordanchartmaster4033@gmail.com"
    git config user.name "jordanchartmaster4033"

    # Add all changes to git
    git add -A

    # Commit changes with a message
    $commitMessage = "Auto-update $(Get-Date -Format g)"
    git commit -m $commitMessage

    # Push changes to GitHub
    git push
} else {
    Write-Host "No changes to commit as of $(Get-Date -Format g)."
}
