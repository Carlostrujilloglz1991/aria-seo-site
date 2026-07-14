@echo off
title PUSH SEO SITE TO GITHUB
cd /d "%~dp0"
echo.
echo ============================================================
echo  ARIA SEO Site - Full Git Push
echo  Folder: %~dp0
echo ============================================================
echo.
python push_seo_full.py %*
echo.
echo Press any key to close...
pause > nul
