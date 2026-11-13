# 1. Install essential development tools
winget install --id astral-sh.uv -e --accept-package-agreements --accept-source-agreements
winget install --id Git.Git -e --accept-package-agreements --accept-source-agreements
winget install --id Microsoft.VisualStudioCode -e --accept-package-agreements --accept-source-agreements

# 2. Refresh environment variables so uv, git, and code work immediately
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") + ";$env:USERPROFILE\.local\bin"

# 3. Configure Git global user details
git config --global user.name "Bhone Khant Zar Ni"
git config --global user.email "bhonekhant2006@gmail.com"
git config --global init.defaultBranch main

# 4. Install the latest Python version using uv
uv python install

# 5. Install essential VS Code extensions
code --install-extension ms-python.python
code --install-extension charliermarsh.ruff