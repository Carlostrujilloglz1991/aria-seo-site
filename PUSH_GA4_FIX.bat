@echo off
title PUSH GA4 FIX — 149 articles
cd /d "%~dp0"
echo.
echo ============================================================
echo  GA4 FIX PUSH
echo  Adds Google Analytics to 149 articles that were missing it
echo  All 1,453 articles will now have G-CDJDJDHBHN tracking
echo ============================================================
echo.
python push_seo_full.py "Fix GA4: inject G-CDJDJDHBHN into 149 articles missing analytics"
echo.
echo Press any key to close...
pause > nul
