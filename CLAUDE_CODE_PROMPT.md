# Claude Code - Soul Knight Wiki Project Context

## 📋 Project Overview
I'm working on a school project - Soul Knight Wiki website that needs to be deployed to GitHub Pages. The website is mostly working but has a CSS styling issue.

## 🎯 Current Status

### ✅ What's Working:
- GitHub repository created: https://github.com/R4-D3K/SoulKnightWiki
- Website deployed to: https://r4-d3k.github.io/SoulKnightWiki/
- GitHub Actions workflow configured and running successfully
- Most HTML pages working correctly
- Some images are displaying
- Responsive design implemented

### ⚠️ Current Problem:
**ISSUE: Background is completely white instead of the designed dark theme**

Expected design:
- Body background: Dark gray (#1a1a1a)
- Container background: Light gray (#f5f5f5)
- Navigation: Dark gray (#2c2c2c) with sticky positioning

Current behavior:
- Everything appears with white background
- CSS might not be loading properly OR
- CSS is being overridden by something

## 📁 Project Structure

```
C:\Users\radek\Downloads\WEB\SoulKnightWiki\
├── index.html
├── Characters.html
├── Lobby.html
├── Weapons.html
├── Worlds.html
├── Buffs.html
├── style.css              ← Main stylesheet (might not be loading)
├── obrazky/               ← Images folder
│   ├── characters/
│   ├── enemies/
│   ├── buffs/
│   ├── lobby/
│   └── gallery/
├── .github/
│   └── workflows/
│       └── deploy.yml     ← GitHub Actions workflow
├── README.md
├── DEPLOYMENT_GUIDE.md
└── .git/

```

## 🔍 What Needs Investigation

### 1. CSS Loading Issue
Check if `style.css` is:
- Actually loading (check Network tab in browser DevTools)
- Linked correctly in all HTML files
- Being cached incorrectly
- Being blocked by GitHub Pages configuration

### 2. Expected CSS Structure
The `style.css` should have:
```css
body {
    background-color: #1a1a1a;  /* Dark background */
}

.container {
    background-color: #f5f5f5;  /* Light container */
    max-width: 1200px;
    margin: 0 auto;
}

nav {
    background-color: #2c2c2c;  /* Dark navigation */
    position: sticky;
    top: 0;
}
```

### 3. HTML Link Tag
Each HTML file should have:
```html
<link rel="stylesheet" href="style.css">
```

NOT:
```html
<link rel="stylesheet" href="/style.css">  <!-- Wrong - absolute path -->
```

## 🎯 Immediate Tasks

### Priority 1: Fix CSS Background
1. Verify `style.css` is present in the repository root
2. Check all HTML files have correct `<link>` tag
3. Inspect browser Network tab to confirm CSS is loading (200 OK)
4. If CSS is loading but not applying, check for CSS conflicts
5. Test locally first, then push to GitHub

### Priority 2: Verify All Images
Some images are showing, but verify all image paths are correct:
- Main images: `obrazky/wallpaper3.jpg`, `obrazky/soul_knight_logo1.png`
- Gallery: `obrazky/gallery/*.jpg|webp|png`
- Characters: `obrazky/characters/*.webp`
- Enemies: `obrazky/enemies/*.webp`
- Buffs: `obrazky/buffs/*.webp`
- Lobby: `obrazky/lobby/*.webp`

## 🛠️ Development Environment

- **Editor**: VS Code with Claude Code extension
- **Working Directory**: `C:\Users\radek\Downloads\WEB\SoulKnightWiki`
- **Git**: Already initialized, remote configured
- **GitHub Repository**: R4-D3K/SoulKnightWiki
- **Live URL**: https://r4-d3k.github.io/SoulKnightWiki/

## 📝 Git Workflow

After making changes:
```bash
git add .
git commit -m "Fix: CSS background styling"
git push
```

GitHub Actions will automatically deploy (takes 1-2 minutes).

## 🔍 Debugging Steps

1. **Check CSS file exists:**
   ```powershell
   ls style.css
   ```

2. **Verify HTML links:**
   ```powershell
   Select-String -Path *.html -Pattern "stylesheet"
   ```

3. **Test locally:**
   Open `index.html` in browser locally to see if CSS works

4. **Check browser console:**
   F12 → Console tab → Look for CSS loading errors

5. **Check Network tab:**
   F12 → Network tab → Reload page → Find `style.css` → Should be 200 OK

## 💡 Possible Solutions

### Solution A: CSS not loading
- Fix `<link>` tag path in all HTML files
- Ensure `style.css` is in repository root
- Clear browser cache

### Solution B: CSS conflict
- Check if GitHub Pages adds any default styles
- Look for inline styles overriding CSS
- Check browser DevTools → Elements → Computed styles

### Solution C: Cache issue
- Add version parameter: `<link rel="stylesheet" href="style.css?v=2">`
- Force refresh: Ctrl+Shift+R
- Clear GitHub Pages cache

## 📊 Expected Final Result

When fixed, the website should have:
- ✅ Dark background around content (#1a1a1a)
- ✅ Light content area (#f5f5f5)
- ✅ Dark sticky navigation (#2c2c2c)
- ✅ All images displaying correctly
- ✅ Responsive design working on mobile
- ✅ Hover effects on cards and navigation

## 🎯 Success Criteria

1. Background is dark gray, not white
2. Navigation bar is dark and sticky
3. Content container has light gray background
4. All images display correctly
5. Site works on both desktop and mobile
6. Changes are pushed to GitHub and live on GitHub Pages

## 🆘 Additional Context

- Original website URL: https://lab.uzlabina.cz/~kratoja1/AS/frish/Web/index.html
- This is a corrected and improved version with:
  - Fixed typos (Pristess → Priestess, etc.)
  - Responsive design added
  - Functional tabs for enemy floors
  - All accessibility improvements (alt tags, meta tags)
  - Automated deployment via GitHub Actions

## 🚀 Let's Start

**Primary goal**: Fix the white background issue so the site displays with the proper dark theme as designed.

Please help me:
1. Diagnose why the CSS background isn't showing
2. Fix the issue
3. Test locally
4. Push to GitHub
5. Verify it works on the live site
