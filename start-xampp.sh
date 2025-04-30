#!/bin/bash

echo "🔧 Installing dependencies..."
sudo apt update
sudo apt install -y net-tools libgtk2.0-0

echo "🛑 Stopping conflicting services..."
sudo systemctl stop apache2 2>/dev/null
sudo systemctl disable apache2 2>/dev/null
sudo systemctl stop nginx 2>/dev/null
sudo systemctl disable nginx 2>/dev/null

echo "🚀 Starting XAMPP..."
sudo /opt/lampp/lampp start

echo "📊 Launching XAMPP GUI..."
sudo /opt/lampp/manager-linux-x64.run
