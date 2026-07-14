@echo off
cd /d "%~dp0"
echo ARIA Affiliate Link Injector
echo ==============================

REM --- DRY RUN first (preview only, no files changed) ---
REM Uncomment the line below to preview what would change without touching any files:
REM python inject_affiliate_links.py --dry-run

REM --- LIVE RUN ---
python inject_affiliate_links.py

echo.
echo Done. Check affiliate_inject_log.json for details.
pause
