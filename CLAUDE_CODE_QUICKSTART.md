# 🚀 Rychlý přechod na Claude Code Extension

## 📋 Co máš připraveno:

✅ **CLAUDE_CODE_PROMPT.md** - Kompletní kontext projektu  
✅ **diagnose-css.ps1** - Diagnostický skript pro CSS problém  

---

## ⚡ Jak začít s Claude Code:

### 1. Otevři VS Code
```
Složka: C:\Users\radek\Downloads\WEB\SoulKnightWiki
```

### 2. Aktivuj Claude Code Extension
- Stiskni `Ctrl+Shift+P`
- Napiš: "Claude Code"
- Vyber: "Claude Code: Start Session"

### 3. Zkopíruj kontext
Otevři **CLAUDE_CODE_PROMPT.md** a zkopíruj celý obsah do Claude Code chatu.

---

## 🔍 První kroky s Claude Code:

### Spusť diagnostiku:
```powershell
.\diagnose-css.ps1
```

Tento skript ti řekne, co je špatně s CSS.

### Pak řekni Claude Code:
```
Spustil jsem diagnostiku CSS. Zde jsou výsledky:
[vlož výstup z diagnose-css.ps1]

Pomoz mi opravit problém s bílým pozadím.
```

---

## 🎯 Co Claude Code může udělat:

Claude Code má přístup k:
- ✅ Všem souborům v projektu
- ✅ Git operacím
- ✅ Terminálu
- ✅ Instalaci závislostí
- ✅ Spuštění skriptů

Může:
1. Zkontrolovat, proč se CSS nenačítá
2. Opravit cesty v HTML souborech
3. Upravit style.css
4. Testovat lokálně
5. Commitnout a pushnout na GitHub
6. Ověřit deployment

---

## 💡 Tipy pro práci s Claude Code:

### Buď specifický:
✅ "Zkontroluj, jestli style.css existuje a je správně linkovaný v index.html"  
❌ "Oprav web"

### Ukaž mu výstupy:
✅ "Spustil jsem diagnose-css.ps1, tady je výstup: ..."  
❌ "Něco nefunguje"

### Nech ho testovat:
✅ "Otestuj změny lokálně před push"  
✅ "Pusni změny a ověř, že fungují na GitHub Pages"

---

## 🐛 Pravděpodobné příčiny bílého pozadí:

### Příčina 1: CSS soubor chybí na GitHubu
```powershell
git status style.css
# Pokud není tracked, přidej:
git add style.css
git commit -m "Add CSS file"
git push
```

### Příčina 2: Špatná cesta v HTML
```html
<!-- ŠPATNĚ -->
<link rel="stylesheet" href="/style.css">

<!-- SPRÁVNĚ -->
<link rel="stylesheet" href="style.css">
```

### Příčina 3: CSS se nenačítá
- F12 → Network → Hledej style.css
- Mělo by být 200 OK (zelená)
- Pokud 404 (červená) → není na serveru

---

## 📝 Vzorový dialog s Claude Code:

**Ty:**
```
Ahoj! Pracuji na projektu Soul Knight Wiki. 
Mám problém - pozadí webu je bílé místo tmavého.

Zde je kompletní kontext:
[vlož CLAUDE_CODE_PROMPT.md]

Můžeš mi pomoci zjistit, proč se CSS nenačítá?
```

**Claude Code:**
```
Zkontroluju projekt. Nejdřív se podívám na strukturu 
souborů a ověřím, jestli style.css existuje...
```

---

## 🎯 Cíl:

Opravit CSS tak, aby:
- ✅ Pozadí bylo tmavé (#1a1a1a)
- ✅ Navigace byla tmavá (#2c2c2c) a sticky
- ✅ Obsah měl světlé pozadí (#f5f5f5)
- ✅ Vše fungovalo na GitHub Pages

---

## 📊 Po opravě:

1. **Lokální test:**
   - Otevři index.html v prohlížeči
   - Zkontroluj, že pozadí je tmavé

2. **Push na GitHub:**
   ```powershell
   git add .
   git commit -m "Fix: CSS background styling"
   git push
   ```

3. **Ověř nasazení:**
   - Sleduj: https://github.com/R4-D3K/SoulKnightWiki/actions
   - Počkej na ✅
   - Refresh: https://r4-d3k.github.io/SoulKnightWiki/

---

## ✅ Checklist:

- [ ] Claude Code extension aktivován
- [ ] CLAUDE_CODE_PROMPT.md zkopírován do chatu
- [ ] diagnose-css.ps1 spuštěn
- [ ] Výsledky diagnostiky sdíleny s Claude Code
- [ ] CSS problém identifikován
- [ ] Oprava provedena
- [ ] Lokální test úspěšný
- [ ] Push na GitHub
- [ ] Deployment ověřen
- [ ] Web funguje s tmavým pozadím ✅

---

**Hodně štěstí s opravou! 🚀**
