# ============================================================
# Docker Desktop installer for Windows (native, no WSL)
# Run in an elevated PowerShell terminal (Run as Administrator):
#   .\install-docker.ps1
# ============================================================
#Requires -RunAsAdministrator
$ErrorActionPreference = "Stop"

$installerUrl = "https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe"
$installerPath = "$env:TEMP\DockerDesktopInstaller.exe"

Write-Host "==> Downloading Docker Desktop installer..." -ForegroundColor Cyan
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath -UseBasicParsing

Write-Host "==> Installing Docker Desktop (this may take a few minutes)..." -ForegroundColor Cyan
Start-Process -FilePath $installerPath -ArgumentList "install", "--quiet", "--accept-license" -Wait -NoNewWindow

Write-Host ""
Write-Host "============================================================" -ForegroundColor Green
Write-Host "  Docker Desktop installed successfully!" -ForegroundColor Green
Write-Host "============================================================" -ForegroundColor Green
Write-Host ""
Write-Host "  IMPORTANT: You must restart your computer to complete"
Write-Host "  the installation."
Write-Host ""
Write-Host "  After restarting, verify with:"
Write-Host "    docker --version"
Write-Host "    docker compose version"
Write-Host "    docker run hello-world"
Write-Host ""
Write-Host "============================================================" -ForegroundColor Green

# Clean up installer
Remove-Item -Path $installerPath -Force -ErrorAction SilentlyContinue
