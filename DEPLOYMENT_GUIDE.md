# 🚀 Průvodce nasazením na GitHub Pages

## Metoda 1: Automatický skript (DOPORUČENO)

### Linux / macOS:
```bash
cd /cesta/k/SoulKnightWiki
./deploy.sh
```

### Windows:
```cmd
cd C:\cesta\k\SoulKnightWiki
deploy.bat
```

Skript automaticky:
- ✅ Zkontroluje Git repository
- ✅ Nastaví GitHub remote
- ✅ Pushne na GitHub
- ✅ Zobrazí další kroky

---

## Metoda 2: Manuální nasazení (krok za krokem)

### Krok 1: Příprava (pouze poprvé)

**Windows (Git Bash nebo PowerShell):**
```powershell
# Otevři PowerShell nebo Git Bash v této složce
cd C:\Users\TvojeJmeno\Downloads\SoulKnightWiki

# Inicializace Git (pokud není)
git init

# Nastav uživatele
git config user.name "R4-D3K"
git config user.email "tvuj-email@gmail.com"
```

**Linux / macOS (Terminál):**
```bash
# Otevři terminál v této složce
cd ~/Downloads/SoulKnightWiki

# Inicializace Git (pokud není)
git init

# Nastav uživatele
git config user.name "R4-D3K"
git config user.email "tvuj-email@gmail.com"
```

### Krok 2: První commit (pouze poprvé)

```bash
# Přejmenuj větev na main
git branch -M main

# Přidej všechny soubory
git add .

# Vytvoř první commit
git commit -m "Initial commit - Soul Knight Wiki"
```

### Krok 3: Propojení s GitHub

```bash
# Přidej GitHub remote
git remote add origin https://github.com/R4-D3K/SoulKnightWiki.git

# Push na GitHub
git push -u origin main
```

**⚠️ Poznámka:** Při prvním push tě GitHub může požádat o autentizaci:
- **Personal Access Token** (doporučeno) - vytvořit na: https://github.com/settings/tokens
- **SSH klíč** - návod: https://docs.github.com/en/authentication/connecting-to-github-with-ssh

### Krok 4: Aktivace GitHub Pages

1. Otevři: https://github.com/R4-D3K/SoulKnightWiki
2. Klikni na **Settings** (nastavení)
3. V levém menu vyber **Pages**
4. V sekci **Build and deployment**:
   - **Source**: vyber **GitHub Actions**
5. Uložit není potřeba - aktivuje se automaticky

### Krok 5: Sledování nasazení

1. Jdi na: https://github.com/R4-D3K/SoulKnightWiki/actions
2. Měl bys vidět běžící workflow "Deploy to GitHub Pages"
3. Klikni na něj pro detail
4. Počkej 1-2 minuty, až skončí (zelená fajfka ✅)

### Krok 6: Ověření webu

Po dokončení nasazení:
- 🌐 Web je dostupný na: **https://r4-d3k.github.io/SoulKnightWiki/**
- 🖼️ **NEZAPOMEŇ:** Musíš ještě přidat složku `obrazky/` (viz níže)

---

## ⚠️ DŮLEŽITÉ - Přidání obrázků

Web je nasazený, ale **obrázky ještě chybí**! Musíš je přidat:

### Krok 1: Zkopíruj složku obrazky/

Z původního projektu zkopíruj celou složku `obrazky/` do kořenového adresáře SoulKnightWiki:

```
SoulKnightWiki/
├── obrazky/          ← TOTO MUSÍŠ ZKOPÍROVAT
│   ├── characters/
│   ├── lobby/
│   ├── enemies/
│   ├── buffs/
│   └── gallery/
├── index.html
├── style.css
└── ...
```

### Krok 2: Commitni a pushni obrázky

```bash
cd /cesta/k/SoulKnightWiki

# Přidej složku obrazky
git add obrazky/

# Commit
git commit -m "Add images folder"

# Push na GitHub
git push
```

### Krok 3: Počkej na re-deploy

- GitHub Actions se automaticky spustí znovu
- Za 1-2 minuty budou obrázky na webu
- Sleduj: https://github.com/R4-D3K/SoulKnightWiki/actions

---

## 🔄 Budoucí aktualizace

Kdykoli chceš aktualizovat web:

```bash
# 1. Udělej změny v souborech (HTML, CSS, ...)

# 2. Přidej změny
git add .

# 3. Commit s popisem
git commit -m "Update: popis změn"

# 4. Push
git push

# ✅ Web se automaticky aktualizuje za 1-2 minuty!
```

---

## 🐛 Řešení problémů

### Problem 1: "Permission denied" při push

**Řešení:**
```bash
# Použij GitHub Personal Access Token
# 1. Vytvoř token: https://github.com/settings/tokens
# 2. Při push zadej token místo hesla
```

Nebo použij SSH:
```bash
git remote set-url origin git@github.com:R4-D3K/SoulKnightWiki.git
```

### Problem 2: Web zobrazuje 404

**Kontrola:**
1. Je repository **public**? (ne private)
2. Je v Settings → Pages aktivován "GitHub Actions"?
3. Proběhl GitHub Actions workflow úspěšně? (zelená fajfka)

**Řešení:**
```bash
# Zkontroluj settings
# Repository musí být PUBLIC
# Pages musí být aktivován
```

### Problem 3: Obrázky se nezobrazují

**Kontrola:**
1. Je složka `obrazky/` v repository?
2. Jsou cesty správné? (relativní, ne absolutní)

**Řešení:**
```bash
# Zkontroluj, že obrazky jsou na GitHubu
git ls-files | grep obrazky

# Pokud ne, přidej je
git add obrazky/
git commit -m "Add images"
git push
```

### Problem 4: "fatal: remote origin already exists"

**Řešení:**
```bash
# Odstraň starý remote a přidej nový
git remote remove origin
git remote add origin https://github.com/R4-D3K/SoulKnightWiki.git
```

### Problem 5: GitHub Actions selhává

**Kontrola:**
1. Jdi na: https://github.com/R4-D3K/SoulKnightWiki/actions
2. Klikni na selhávající workflow
3. Přečti si error log

**Časté příčiny:**
- Chybí permissions v Settings → Actions → General
- Chybějící soubory
- Špatná syntax v .github/workflows/deploy.yml

---

## 📊 Monitoring nasazení

### Zkontroluj status:
```bash
# Zobraz poslední commit
git log -1

# Zkontroluj remote
git remote -v

# Zobraz větve
git branch -a
```

### Online monitoring:
- 📦 **Repository**: https://github.com/R4-D3K/SoulKnightWiki
- ⚙️ **Actions**: https://github.com/R4-D3K/SoulKnightWiki/actions
- 🌐 **Live web**: https://r4-d3k.github.io/SoulKnightWiki/
- 📊 **Settings**: https://github.com/R4-D3K/SoulKnightWiki/settings/pages

---

## 💡 Tipy a triky

### Rychlý update:
```bash
# Jednořádkový update
git add . && git commit -m "Update" && git push
```

### Zobraz, co se změnilo:
```bash
git status
git diff
```

### Historie změn:
```bash
git log --oneline
```

### Vrať se k předchozí verzi:
```bash
git log --oneline  # najdi commit hash
git checkout <hash> -- soubor.html
```

---

## 🎓 Git příkazy - stručný přehled

| Příkaz | Co dělá |
|--------|---------|
| `git status` | Zobrazí změny |
| `git add .` | Přidá všechny změny |
| `git commit -m "text"` | Vytvoří commit |
| `git push` | Pošle na GitHub |
| `git pull` | Stáhne z GitHubu |
| `git log` | Historie commitů |
| `git diff` | Zobrazí rozdíly |

---

## ✅ Checklist nasazení

- [ ] Git je nainstalovaný
- [ ] Repository je vytvořený na GitHubu (SoulKnightWiki)
- [ ] Lokální Git je inicializovaný (`git init`)
- [ ] Remote je nastavený (`git remote add origin ...`)
- [ ] První commit je vytvořený
- [ ] Push na GitHub proběhl úspěšně
- [ ] GitHub Pages je aktivován (Settings → Pages)
- [ ] GitHub Actions workflow proběhl úspěšně (zelená fajfka)
- [ ] Web je dostupný na https://r4-d3k.github.io/SoulKnightWiki/
- [ ] Složka `obrazky/` je přidána a pushnutá
- [ ] Všechny obrázky se zobrazují správně

---

## 📞 Pomoc

Pokud máš problém:
1. Zkontroluj tento návod znovu
2. Podívej se na error log v GitHub Actions
3. Zkontroluj Settings → Pages
4. Ověř, že je repository PUBLIC

---

**Vytvořeno:** 4. ledna 2025  
**GitHub:** https://github.com/R4-D3K/SoulKnightWiki  
**Live web:** https://r4-d3k.github.io/SoulKnightWiki/
