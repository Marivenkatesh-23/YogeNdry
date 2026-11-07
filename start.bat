@echo off
title YogeNdry dashboard - localhost:8080
cd /d "%~dp0"
echo.
echo   YogeNdry dashboard running at  http://localhost:8080
echo   Keep this window open. Press Ctrl+C to stop.
echo.
start "" powershell -NoProfile -WindowStyle Hidden -Command "Start-Sleep -Seconds 1; Start-Process 'http://localhost:8080'"
where python >nul 2>nul && (python -m http.server 8080) || (py -m http.server 8080)
pause
