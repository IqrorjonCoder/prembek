#!/bin/bash

# Local development setup script for Linux/Mac

echo ""
echo "===================================="
echo "   Prem_Bek Local Setup"
echo "===================================="
echo ""

# Check if venv exists
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
    if [ $? -ne 0 ]; then
        echo "ERROR: Failed to create virtual environment"
        echo "Make sure Python 3.8+ is installed"
        exit 1
    fi
fi

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt
if [ $? -ne 0 ]; then
    echo "ERROR: Failed to install dependencies"
    exit 1
fi

# Check .env file
if [ ! -f ".env" ]; then
    echo ""
    echo "WARNING: .env file not found!"
    echo "Creating .env file..."
    cat > .env << EOF
TELEGRAM_BOT_TOKEN=7548520724:AAGSRnqwBeb35JM-6609-4WhLphX9dIBTA4
TELEGRAM_CHAT_ID=-1003990120376
EOF
    echo ".env file created"
fi

echo ""
echo "===================================="
echo "   Setup Complete!"
echo "===================================="
echo ""
echo "Starting Flask server..."
echo "Open http://localhost:5000 in your browser"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

python app.py
