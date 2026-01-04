#!/bin/bash

# Soul Knight Wiki - Deployment Script
# Tento skript nasadí web na GitHub Pages

echo "🚀 Soul Knight Wiki - GitHub Pages Deployment"
echo "=============================================="
echo ""

# Zjištění, zda jsme v Git repository
if [ ! -d .git ]; then
    echo "❌ Chyba: Nejsi v Git repository!"
    echo "   Ujisti se, že jsi ve složce SoulKnightWiki"
    exit 1
fi

# Zkontroluj, zda je nastaven remote
if ! git remote get-url origin &> /dev/null; then
    echo "📡 Nastavuji GitHub remote..."
    git remote add origin https://github.com/R4-D3K/SoulKnightWiki.git
    echo "✅ Remote nastaven!"
else
    echo "✅ Remote už je nastaven"
fi

# Zobraz status
echo ""
echo "📊 Git status:"
git status --short

# Zeptej se, zda pokračovat
echo ""
read -p "Chceš pushnout na GitHub? (y/n): " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Nasazení zrušeno"
    exit 1
fi

# Push na GitHub
echo ""
echo "⬆️  Odesílám na GitHub..."
if git push -u origin main; then
    echo ""
    echo "✅ Úspěšně odesláno na GitHub!"
    echo ""
    echo "🎉 Nasazení dokončeno!"
    echo ""
    echo "📋 Co dál:"
    echo "   1. Jdi na https://github.com/R4-D3K/SoulKnightWiki"
    echo "   2. Klikni na Settings → Pages"
    echo "   3. V 'Source' vyber 'GitHub Actions'"
    echo "   4. Počkej 1-2 minuty"
    echo "   5. Web bude na: https://r4-d3k.github.io/SoulKnightWiki/"
    echo ""
    echo "📊 Sleduj nasazení: https://github.com/R4-D3K/SoulKnightWiki/actions"
else
    echo ""
    echo "❌ Chyba při odesílání!"
    echo ""
    echo "💡 Možné řešení:"
    echo "   1. Zkontroluj, že máš nastavený GitHub token nebo SSH klíč"
    echo "   2. Zkus: git push --set-upstream origin main --force"
    echo "   3. Nebo použij ruční příkazy z README.md"
fi
