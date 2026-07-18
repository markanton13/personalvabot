# Locate or rebuild the Windows installer

The inventory did not locate the expected `0.3.12` installer under `C:\Users\Mark`.

## Search without relying on the exact filename

Run:

```powershell
Get-ChildItem "C:\Users\Mark" -Recurse -File -Filter *.exe -ErrorAction SilentlyContinue |
  Where-Object {
    $_.FullName -notmatch '\\node_modules\\' -and
    ($_.Name -match '(?i)personal|vabot|setup|installer' -or $_.LastWriteTime -ge [datetime]'2026-07-14')
  } |
  Select-Object FullName, Length, LastWriteTime |
  Sort-Object LastWriteTime -Descending
```

## Inspect the build command

From `C:\Users\Mark\PersonalVABot-Core`:

```powershell
Get-Content .\package.json
Get-Content .\3-BUILD-WINDOWS-INSTALLER.bat
```

Review the configured output directory before rebuilding.

## After locating or rebuilding

1. Test the installer on the trusted Windows machine.
2. Confirm the displayed version is `0.3.12`.
3. Confirm the application launches.
4. Confirm existing `%APPDATA%\PersonalVABot` data remains available.
5. Calculate the checksum:

```powershell
Get-FileHash ".\PersonalVABot-Setup.exe" -Algorithm SHA256
```

6. Add the checksum and exact filename to `releases/0.3.12/SHA256SUMS.txt`.
7. Upload the installer and checksum as GitHub Release assets.
8. Do not commit the installer directly into the repository history.
