# ⚡ RYCHLÝ START / QUICK START

## 🎯 Cíl: Nasadit web na GitHub Pages za 5 minut

---

## 📋 Příprava (PŘED spuštěním)

### ✅ Checklist:
- [ ] Máš nainstalovaný Git? → https://git-scm.com/downloads
- [ ] Máš GitHub účet? → https://github.com/
- [ ] Máš vytvořený prázdný repository "SoulKnightWiki"? → https://github.com/new
- [ ] Repository je **PUBLIC** (ne private)?

---

## 🚀 Nasazení - 3 kroky

### ⚡ RYCHLÁ METODA (Automatický skript)

#### Windows:
1. Otevři tuto složku v Průzkumníku
2. Dvojklik na `deploy.bat`
3. Následuj instrukce

#### Linux/macOS:
1. Otevři terminál v této složce
2. Spusť: `./deploy.sh`
3. Následuj instrukce

---

### 📝 MANUÁLNÍ METODA (Pokud skript nefunguje)

Otevři terminál/Git Bash v této složce a spusť:

```bash
# Krok 1: Nastav remote
git remote add origin https://github.com/R4-D3K/SoulKnightWiki.git

# Krok 2: Push na GitHub
git push -u origin main

# Hotovo! 
```

---

## 🎨 Přidání obrázků (DŮLEŽITÉ!)

Web je nasazený, ale **chybí obrázky**!

### Krok 1: Zkopíruj složku obrazky/
Ze starého projektu zkopíruj celou složku `obrazky/` sem.

### Krok 2: Push obrázky
```bash
git add obrazky/
git commit -m "Add images"
git push
```

Za 2 minuty budou obrázky na webu!

---

## 🌐 Aktivace GitHub Pages

Po push na GitHub:

1. Jdi na: https://github.com/R4-D3K/SoulKnightWiki
2. Klikni **Settings** → **Pages**
3. V **Source** vyber: **GitHub Actions**
4. Počkej 1-2 minuty
5. Web je na: **https://r4-d3k.github.io/SoulKnightWiki/**

---

## 📊 Monitoring

- **Repository**: https://github.com/R4-D3K/SoulKnightWiki
- **Nasazení**: https://github.com/R4-D3K/SoulKnightWiki/actions
- **Live web**: https://r4-d3k.github.io/SoulKnightWiki/

---

## 🐛 Problémy?

Podívej se do:
- 📖 **README.md** - kompletní dokumentace
- 📖 **DEPLOYMENT_GUIDE.md** - detailní návod krok za krokem

---

## 🔄 Budoucí aktualizace

Kdykoli chceš něco změnit:

```bash
# 1. Udělej změny v souborech
# 2. Spusť:
git add .
git commit -m "Update"
git push
# 3. Web se automaticky aktualizuje za 2 minuty!
```

---

## ✅ Je vše hotovo?

- [ ] Git push proběhl úspěšně
- [ ] GitHub Actions je zelený (✅)
- [ ] GitHub Pages je aktivován
- [ ] Web funguje: https://r4-d3k.github.io/SoulKnightWiki/
- [ ] Obrázky jsou přidány a zobrazují se

---

**Potřebuješ pomoc?** Otevři DEPLOYMENT_GUIDE.md
