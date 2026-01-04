@echo off
REM Soul Knight Wiki - Windows Deployment Script

echo.
echo ========================================
echo Soul Knight Wiki - GitHub Pages Deploy
echo ========================================
echo.

REM Check if in Git repository
if not exist .git (
    echo ERROR: Nejsi v Git repository!
    echo        Ujisti se, ze jsi ve slozce SoulKnightWiki
    pause
    exit /b 1
)

REM Check if remote is set
git remote get-url origin >nul 2>&1
if %errorlevel% neq 0 (
    echo Nastavuji GitHub remote...
    git remote add origin https://github.com/R4-D3K/SoulKnightWiki.git
    echo Remote nastaven!
) else (
    echo Remote uz je nastaven
)

echo.
echo Git status:
git status --short

echo.
set /p continue="Chces pushnout na GitHub? (Y/N): "
if /i not "%continue%"=="Y" (
    echo Nasazeni zruseno
    pause
    exit /b 1
)

echo.
echo Odesilam na GitHub...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo USPESNE ODESLANO!
    echo ========================================
    echo.
    echo Co dal:
    echo 1. Jdi na https://github.com/R4-D3K/SoulKnightWiki
    echo 2. Klikni na Settings - Pages
    echo 3. V Source vyber GitHub Actions
    echo 4. Pockej 1-2 minuty
    echo 5. Web bude na: https://r4-d3k.github.io/SoulKnightWiki/
    echo.
    echo Sleduj nasazeni: https://github.com/R4-D3K/SoulKnightWiki/actions
) else (
    echo.
    echo CHYBA pri odesilani!
    echo.
    echo Mozne reseni:
    echo 1. Zkontroluj GitHub token nebo SSH klic
    echo 2. Zkus: git push --set-upstream origin main --force
    echo 3. Nebo pouzij manualni prikazy z README.md
)

echo.
pause
