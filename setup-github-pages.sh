#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🚀 GitHub Pages Setup for definest.site${NC}"
echo -e "=====================================\n"

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo -e "${RED}❌ Git not initialized. Please run: git init${NC}"
    exit 1
fi

# Check if files are committed
if ! git diff --cached --quiet; then
    echo -e "${YELLOW}⚠️  Files not committed. Committing now...${NC}"
    git add .
    git commit -m "Tesla API registration files for definest.site"
fi

echo -e "${GREEN}✅ Repository ready for GitHub!${NC}\n"

echo -e "${BLUE}📋 Next Steps:${NC}"
echo -e "1. Go to https://github.com/new"
echo -e "2. Repository name: teslink-definest-site"
echo -e "3. Make it Public"
echo -e "4. Don't initialize with README"
echo -e "5. Click 'Create repository'"
echo -e ""
echo -e "${YELLOW}After creating the repository, run:${NC}"
echo -e "git remote add origin https://github.com/YOUR_USERNAME/teslink-definest-site.git"
echo -e "git branch -M main"
echo -e "git push -u origin main"
echo -e ""
echo -e "${BLUE}Then enable GitHub Pages:${NC}"
echo -e "1. Go to repository Settings → Pages"
echo -e "2. Source: Deploy from a branch"
echo -e "3. Branch: main"
echo -e "4. Custom domain: definest.site"
echo -e "5. Save"
echo -e ""
echo -e "${GREEN}🎯 Your site will be available at: https://definest.site${NC}" 