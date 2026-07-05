# Install Docker on Windows (Native)

PowerShell script that downloads and installs Docker Desktop on Windows without requiring WSL.

## What It Does

1. Downloads the official Docker Desktop installer from Docker's website.
2. Runs a silent installation with license auto-accepted.
3. Cleans up the installer file.

## Usage

Open an **elevated PowerShell terminal** (Run as Administrator) and run:

```powershell
.\install-docker.ps1
```

## Post-Install

- **Restart your computer** to complete the installation.
- After restarting, verify the installation:

```powershell
docker --version
docker compose version
docker run hello-world
```

## When to Use This vs. Windows-WSL

| Approach | Best for |
|---|---|
| **Windows (this)** | Quick setup, GUI preference, Windows containers needed |
| **Windows-WSL** | Lighter footprint, no Docker Desktop licensing, Linux-native Docker CLI |

If you only need Linux containers and want to avoid Docker Desktop entirely, use the `windows-wsl` variant instead.

## Requirements

- Windows 10/11 (64-bit).
- Administrator privileges.
- Internet access (to download Docker Desktop).
