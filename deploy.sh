#!/bin/bash

echo "🚀 Go Solutions Website Deployment Script"
echo "=========================================="

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "📁 Initializing Git repository..."
    git init
    git add .
    git commit -m "Initial commit: Go Solutions website"
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already exists"
fi

echo ""
echo "📋 Next steps for GitHub Pages deployment:"
echo "1. Create a new repository on GitHub"
echo "2. Add your GitHub repository as remote origin:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git"
echo "3. Push your code:"
echo "   git push -u origin main"
echo "4. Go to repository Settings > Pages"
echo "5. Select 'Deploy from a branch' and choose 'main'"
echo "6. Your website will be available at:"
echo "   https://YOUR_USERNAME.github.io/YOUR_REPO_NAME"
echo ""
echo "🌐 To test locally, run: python3 -m http.server 8000"
echo "   Then visit: http://localhost:8000"
echo ""
echo "✨ Website is ready for deployment!" 