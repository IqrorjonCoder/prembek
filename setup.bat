@echo off
REM Local development setup script for Windows

echo.
echo ====================================
echo   Prem_Bek Local Setup
echo ====================================
echo.

REM Check if venv exists
if not exist "venv" (
    echo Creating virtual environment...
    python -m venv venv
    if errorlevel 1 (
        echo ERROR: Failed to create virtual environment
        echo Make sure Python 3.8+ is installed
        pause
        exit /b 1
    )
)

REM Activate virtual environment
echo Activating virtual environment...
call venv\Scripts\activate.bat

REM Install dependencies
echo Installing dependencies...
pip install -r requirements.txt
if errorlevel 1 (
    echo ERROR: Failed to install dependencies
    pause
    exit /b 1
)

REM Check .env file
if not exist ".env" (
    echo.
    echo WARNING: .env file not found!
    echo Creating .env file...
    (
        echo TELEGRAM_BOT_TOKEN=7548520724:AAGSRnqwBeb35JM-6609-4WhLphX9dIBTA4
        echo TELEGRAM_CHAT_ID=-1003990120376
    ) > .env
    echo .env file created
)

echo.
echo ====================================
echo   Setup Complete!
echo ====================================
echo.
echo Starting Flask server...
echo Open http://localhost:5000 in your browser
echo.
echo Press Ctrl+C to stop the server
echo.

python app.py
