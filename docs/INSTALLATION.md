# Windows Beta Installation

## Requirements

- Windows 10 or Windows 11
- A local Windows user account with permission to install per-user applications
- Discord account and bot credentials only when using the Discord integration
- Internet access for Discord connectivity

## Install

1. Download the installer from the latest GitHub Release.
2. Download `SHA256SUMS.txt` from the same release.
3. Verify the installer checksum.
4. Run the installer.
5. Launch PersonalVABot.
6. Complete the local configuration and, when needed, connect your Discord bot credentials.

## Verify a SHA-256 checksum in PowerShell

```powershell
Get-FileHash ".\PersonalVABot-Setup.exe" -Algorithm SHA256
```

Compare the result with the checksum published in the release.

## Windows SmartScreen

The Windows beta may use an unsigned installer. Windows SmartScreen can display a warning for unsigned or newly distributed applications.

Only continue when:

- the installer came from the official GitHub Release;
- the checksum matches;
- the release notes identify the expected version.

## Data location

Stable application data is stored under:

```text
%APPDATA%\PersonalVABot
```

Normal uninstall is designed to preserve this directory so operational data is not removed accidentally.

## Before uninstalling or upgrading

1. Create a fresh backup.
2. Confirm the backup date and size.
3. Close the application.
4. Keep the stable data directory unless intentionally resetting the system.

## Discord credentials

Never paste tokens into public issues, screenshots, commits, or support messages.

If a token is exposed:

1. regenerate it immediately in the Discord Developer Portal;
2. replace the local credential;
3. confirm the old token no longer works.
