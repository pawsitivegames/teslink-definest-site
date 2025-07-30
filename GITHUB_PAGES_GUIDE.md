# 🚀 GitHub Pages Setup Guide for definest.site

## 📋 Quick Steps

### Step 1: Create GitHub Repository
1. Go to [https://github.com/new](https://github.com/new)
2. **Repository name**: `teslink-definest-site`
3. **Make it Public** (required for free GitHub Pages)
4. **Don't initialize** with README
5. Click **"Create repository"**

### Step 2: Push Your Code
Replace `YOUR_USERNAME` with your GitHub username:

```bash
git remote add origin https://github.com/YOUR_USERNAME/teslink-definest-site.git
git branch -M main
git push -u origin main
```

### Step 3: Enable GitHub Pages
1. Go to your repository on GitHub
2. Click **Settings** tab
3. Click **Pages** (left sidebar)
4. **Source**: Deploy from a branch
5. **Branch**: `main`
6. Click **Save**
7. **Custom domain**: Add `definest.site`
8. Click **Save**

### Step 4: Configure DNS in GoDaddy
1. Log into GoDaddy
2. Go to **My Products** → **Domains** → **definest.site** → **Manage**
3. Click **DNS** → **Manage Zones**
4. Add these records:

**CNAME Record:**
- **Name**: `@` (or leave blank)
- **Value**: `YOUR_USERNAME.github.io`
- **TTL**: 600

**A Record (if needed):**
- **Name**: `@`
- **Value**: `185.199.108.153`
- **TTL**: 600

### Step 5: Test Your Site
After DNS propagates (can take up to 24 hours):
- Visit: https://definest.site
- Test public key: https://definest.site/.well-known/appspecific/com.tesla.3p.public-key.pem

## 🎯 Expected Results
- ✅ Site accessible at https://definest.site
- ✅ Public key accessible at Tesla-required path
- ✅ Ready for Tesla Fleet API registration

## 🔧 Troubleshooting
- **DNS not working**: Wait up to 24 hours for propagation
- **GitHub Pages not showing**: Check if repository is public
- **Custom domain not working**: Verify DNS settings in GoDaddy

## 📞 Need Help?
If you get stuck, just tell me your GitHub username and I'll help you with the exact commands! 