@echo off
:: ═══════════════════════════════════════════════════════
::  Baby Mo Bedtime — Quick Setup Script (Windows)
:: ═══════════════════════════════════════════════════════
echo.
echo  🌙  Baby Mo Bedtime App — Setup (Windows)
echo  ===========================================
echo.

:: Check Node.js
where node >nul 2>&1
if %errorlevel% neq 0 (
    echo  ⚠️  Node.js tidak ditemukan^^!
    echo     Download dari: https://nodejs.org  (pilih LTS version)
    echo     Setelah install, jalankan setup.bat ini lagi.
    pause
    exit /b 1
)

for /f "tokens=*" %%v in ('node -v') do set NODE_VER=%%v
echo  ✓ Node.js ditemukan: %NODE_VER%
echo.

echo  📦 Menginstall dependencies...
call npm install
if %errorlevel% neq 0 goto error

echo.
echo  🤖 Setup Android...
call npx cap add android 2>nul || echo    (Android sudah ada, skip)

echo.
echo  🔄 Sync files...
call npx cap sync
if %errorlevel% neq 0 goto error

echo.
echo  ✅  Setup selesai^^!
echo.
echo  ═══════════════════════════════════════════
echo    LANGKAH SELANJUTNYA:
echo  ═══════════════════════════════════════════
echo.
echo    📱  Untuk TEST di Android:
echo        1. Hubungkan HP dengan kabel USB
echo        2. Aktifkan USB Debugging di HP
echo        3. Jalankan: npm run android
echo.
echo    🖥️  Untuk BUKA di Android Studio:
echo        npm run open:android
echo.
echo    🌐  Untuk test di BROWSER sekarang:
echo        Buka: www\index.html di Chrome
echo.
echo  ═══════════════════════════════════════════
echo.
pause
goto end

:error
echo.
echo  ❌ Ada error. Cek pesan di atas.
pause

:end
