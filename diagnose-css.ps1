# Quick CSS Diagnostic Script
# Run this in PowerShell to diagnose the white background issue

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "CSS Diagnostic Tool" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check 1: Does style.css exist?
Write-Host "1. Checking if style.css exists..." -ForegroundColor Yellow
if (Test-Path "style.css") {
    Write-Host "   ✓ style.css found" -ForegroundColor Green
    $cssSize = (Get-Item "style.css").Length
    Write-Host "   File size: $cssSize bytes" -ForegroundColor Gray
} else {
    Write-Host "   ✗ style.css NOT FOUND!" -ForegroundColor Red
    Write-Host "   This is the problem - CSS file is missing!" -ForegroundColor Red
}
Write-Host ""

# Check 2: Are HTML files linking to CSS correctly?
Write-Host "2. Checking HTML link tags..." -ForegroundColor Yellow
$htmlFiles = Get-ChildItem -Filter "*.html"
foreach ($file in $htmlFiles) {
    $content = Get-Content $file.Name -Raw
    if ($content -match '<link[^>]*stylesheet[^>]*>') {
        $match = $Matches[0]
        if ($match -match 'href="([^"]*)"') {
            $href = $Matches[1]
            Write-Host "   $($file.Name): href='$href'" -ForegroundColor Gray
            
            # Check if it's a correct relative path
            if ($href -eq "style.css") {
                Write-Host "      ✓ Correct path" -ForegroundColor Green
            } elseif ($href -like "/style.css" -or $href -like "*/style.css") {
                Write-Host "      ✗ WRONG - Should be 'style.css' not '$href'" -ForegroundColor Red
            } else {
                Write-Host "      ? Different CSS: $href" -ForegroundColor Yellow
            }
        }
    } else {
        Write-Host "   $($file.Name): ✗ NO STYLESHEET LINK FOUND!" -ForegroundColor Red
    }
}
Write-Host ""

# Check 3: Does CSS have the correct background styles?
Write-Host "3. Checking CSS content..." -ForegroundColor Yellow
if (Test-Path "style.css") {
    $css = Get-Content "style.css" -Raw
    
    # Check for body background
    if ($css -match "body\s*{[^}]*background-color:\s*#1a1a1a") {
        Write-Host "   ✓ Body background-color: #1a1a1a found" -ForegroundColor Green
    } else {
        Write-Host "   ✗ Body background-color: #1a1a1a NOT FOUND" -ForegroundColor Red
    }
    
    # Check for container background
    if ($css -match "\.container\s*{[^}]*background-color:\s*#f5f5f5") {
        Write-Host "   ✓ Container background-color: #f5f5f5 found" -ForegroundColor Green
    } else {
        Write-Host "   ? Container background style might be different" -ForegroundColor Yellow
    }
    
    # Check for nav background
    if ($css -match "nav\s*{[^}]*background-color:\s*#2c2c2c") {
        Write-Host "   ✓ Nav background-color: #2c2c2c found" -ForegroundColor Green
    } else {
        Write-Host "   ? Nav background style might be different" -ForegroundColor Yellow
    }
} else {
    Write-Host "   ✗ Cannot check - style.css not found" -ForegroundColor Red
}
Write-Host ""

# Check 4: Check Git status
Write-Host "4. Checking Git status..." -ForegroundColor Yellow
$gitStatus = git status --short style.css 2>&1
if ($gitStatus -match "style.css") {
    Write-Host "   ℹ style.css has uncommitted changes" -ForegroundColor Yellow
    Write-Host "   $gitStatus" -ForegroundColor Gray
} elseif (Test-Path "style.css") {
    Write-Host "   ✓ style.css is committed to Git" -ForegroundColor Green
} else {
    Write-Host "   ✗ style.css not in Git repository" -ForegroundColor Red
}
Write-Host ""

# Summary
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Summary & Recommendations" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

if (-not (Test-Path "style.css")) {
    Write-Host "❌ PROBLEM FOUND: style.css is missing!" -ForegroundColor Red
    Write-Host ""
    Write-Host "SOLUTION:" -ForegroundColor Yellow
    Write-Host "The style.css file needs to be created or restored." -ForegroundColor Yellow
    Write-Host "Check if it was accidentally deleted or not added to Git." -ForegroundColor Yellow
} else {
    Write-Host "Next steps to debug:" -ForegroundColor Yellow
    Write-Host "1. Open https://r4-d3k.github.io/SoulKnightWiki/ in browser" -ForegroundColor Gray
    Write-Host "2. Press F12 to open DevTools" -ForegroundColor Gray
    Write-Host "3. Go to Network tab" -ForegroundColor Gray
    Write-Host "4. Reload page (Ctrl+R)" -ForegroundColor Gray
    Write-Host "5. Find 'style.css' in the list" -ForegroundColor Gray
    Write-Host "6. Check if it's 200 OK (green) or 404 (red)" -ForegroundColor Gray
    Write-Host ""
    Write-Host "If style.css shows 404:" -ForegroundColor Yellow
    Write-Host "- File might not be pushed to GitHub" -ForegroundColor Gray
    Write-Host "- Run: git add style.css && git commit -m 'Add CSS' && git push" -ForegroundColor Gray
}

Write-Host ""
Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
