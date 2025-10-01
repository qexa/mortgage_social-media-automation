#!/bin/bash
echo "🚀 Setting up Social Media Automation Platform..."

# Install backend dependencies
cd backend && npm install
cd ..

# Install frontend dependencies  
cd frontend && npm install
cd ..

# Copy env files
cp backend/.env.example backend/.env
cp frontend/.env.example frontend/.env

echo "✅ Setup complete!"
echo "Update .env files with your API keys, then run:"
echo "  docker-compose up -d"
