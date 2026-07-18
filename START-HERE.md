# Local setup

1. Extract this folder to:

```text
C:\Users\Mark\PersonalVABot-Public
```

2. Copy the screenshots:

```powershell
cd "C:\Users\Mark\PersonalVABot-Public"
Set-ExecutionPolicy -Scope Process Bypass
.\COPY-SCREENSHOTS.ps1
```

3. Review all documents and screenshots.

4. Confirm the folder contains no source code, tokens, databases, logs, backups, or client data.

5. Initialize Git locally:

```powershell
git init
git branch -M main
git status --short
git add .
git diff --cached --check
git commit -m "Create PersonalVABot public product repository"
```

6. Create an empty public GitHub repository named:

```text
personalvabot
```

7. Connect and push only after review:

```powershell
git remote add origin https://github.com/markanton13/personalvabot.git
git push -u origin main
```

8. Locate or rebuild the installer using `FIND-OR-BUILD-INSTALLER.md`.

9. Publish the installer only as a GitHub Release asset.
