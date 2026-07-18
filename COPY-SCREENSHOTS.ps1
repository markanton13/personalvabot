$ErrorActionPreference = "Stop"

$Target = "C:\Users\Mark\PersonalVABot-Public"
$Source = "C:\Users\Mark\markbadong-portfolio\public\images\projects\personalvabot"

if (-not (Test-Path $Target)) {
    throw "Target repository folder not found: $Target"
}

if (-not (Test-Path $Source)) {
    throw "Portfolio screenshot folder not found: $Source"
}

$Destination = Join-Path $Target "screenshots"
New-Item -ItemType Directory -Force -Path $Destination | Out-Null

$Expected = @(
    "about.webp",
    "attendance-dtr.webp",
    "billing-agreement.webp",
    "client-management.webp",
    "dashboard.webp",
    "discord-task-capture.webp",
    "earnings.webp",
    "health-center.webp",
    "task-dashboard.webp",
    "task-lifecycle.webp"
)

foreach ($Name in $Expected) {
    $From = Join-Path $Source $Name
    if (-not (Test-Path $From)) {
        throw "Required screenshot not found: $From"
    }
    Copy-Item $From -Destination (Join-Path $Destination $Name) -Force
}

Write-Host "Copied $($Expected.Count) PersonalVABot screenshots." -ForegroundColor Green
Write-Host "No source code, credentials, database, logs, or backups were copied." -ForegroundColor Green
