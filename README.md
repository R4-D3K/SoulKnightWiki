# Soul Knight Wiki

Kompletní wiki pro hru Soul Knight s informacemi o postavách, zbrani, buffech a dalším.

## 🌐 Live Demo
Po nasazení bude dostupné na: **https://r4-d3k.github.io/SoulKnightWiki/**

---

## 📋 O projektu

Toto je vylepšená verze školní práce zahrnující:
- ✅ Responzivní design (desktop + mobil)
- ✅ Automatické nasazení přes GitHub Actions
- ✅ Všechny opravené chyby z původní verze
- ✅ Moderní CSS s animacemi
- ✅ Přístupnost (ALT tagy, sémantický HTML)

---

## 🚀 Nasazení na GitHub Pages

### Krok 1: Lokální Git setup (v terminálu)

```bash
# Přejdi do složky projektu
cd /cesta/k/SoulKnightWiki

# Inicializuj Git repository
git init

# Přidej všechny soubory
git add .

# První commit
git commit -m "Initial commit - Soul Knight Wiki"

# Přidej remote repository (tvůj GitHub)
git remote add origin https://github.com/R4-D3K/SoulKnightWiki.git

# Přejmenuj větev na main (pokud je master)
git branch -M main

# Pushni na GitHub
git push -u origin main
```

### Krok 2: Aktivace GitHub Pages

1. Jdi na: https://github.com/R4-D3K/SoulKnightWiki
2. Klikni na **Settings** (nastavení)
3. V levém menu vyber **Pages**
4. V sekci **Build and deployment**:
   - **Source**: vyberte **GitHub Actions**
5. Hotovo! GitHub automaticky spustí nasazení

### Krok 3: Čekání na nasazení

- GitHub Actions začne automaticky běžet po push
- Můžeš sledovat průběh na: https://github.com/R4-D3K/SoulKnightWiki/actions
- Nasazení trvá 1-2 minuty
- Po dokončení bude web dostupný na: **https://r4-d3k.github.io/SoulKnightWiki/**

---

## 📁 Struktura projektu

```
SoulKnightWiki/
├── .github/
│   └── workflows/
│       └── deploy.yml          # GitHub Actions workflow
├── obrazky/                     # Složka s obrázky (nahraj z originálu)
│   ├── characters/
│   ├── lobby/
│   ├── enemies/
│   ├── buffs/
│   └── gallery/
├── index.html                   # Domovská stránka
├── Characters.html              # Postavy a nepřátelé
├── Lobby.html                   # Lobby
├── Weapons.html                 # Zbraně
├── Worlds.html                  # Patra/světy
├── Buffs.html                   # Buffy
├── style.css                    # Hlavní stylesheet
├── .gitignore                   # Git ignore soubor
└── README.md                    # Tento soubor
```

---

## ⚠️ DŮLEŽITÉ - Obrázky

**NEZAPOMEŇ PŘIDAT SLOŽKU `obrazky/`!**

Tento repository zatím neobsahuje obrázky. Musíš:

1. **Zkopírovat celou složku `obrazky/` z původního projektu**
2. **Umístit ji do kořenového adresáře projektu** (stejná úroveň jako index.html)
3. **Commitnout a pushnout:**
   ```bash
   git add obrazky/
   git commit -m "Add images folder"
   git push
   ```

Bez této složky se obrázky nezobrazí!

---

## 🔄 Aktualizace webu

Kdykoli chceš aktualizovat web:

```bash
# 1. Udělej změny v souborech

# 2. Přidej změny do git
git add .

# 3. Commit
git commit -m "Popis změn"

# 4. Push na GitHub
git push

# GitHub Pages se automaticky aktualizuje za 1-2 minuty!
```

---

## 🛠️ Co bylo opraveno od originálu

### Kritické chyby:
- ✅ Překlepy: "Pristess" → "Priestess", "fihgting" → "fighting"
- ✅ Nekonzistentní kapitalizace
- ✅ Prázdné stránky Weapons.html a Worlds.html

### Responzivita:
- ✅ Viewport meta tag
- ✅ Responzivní CSS
- ✅ Mobile-first menu
- ✅ Adaptivní grid layout

### Přístupnost:
- ✅ ALT atributy u všech obrázků
- ✅ Lazy loading
- ✅ Sémantický HTML

### Nové funkce:
- ✅ Funkční záložky pro patra nepřátel
- ✅ Sticky navigace
- ✅ Hover efekty
- ✅ Moderní design

---

## 📱 Testování

### Desktop:
```bash
# Otevři lokálně v prohlížeči
open index.html  # macOS
start index.html # Windows
```

### Mobile:
- Otevři Developer Tools (F12)
- Klikni na ikonu mobilního zařízení
- Nebo testuj na skutečném telefonu

---

## 🐛 Řešení problémů

### Web se nezobrazuje
1. Zkontroluj, že GitHub Actions úspěšně proběhl: https://github.com/R4-D3K/SoulKnightWiki/actions
2. Ověř, že je v Settings → Pages nastaveno "GitHub Actions"
3. Počkej 1-2 minuty po push

### Obrázky se nezobrazují
1. Ujisti se, že složka `obrazky/` je v repository
2. Zkontroluj, že cesty v HTML jsou relativní (ne absolutní)
3. Commitni a pushni složku obrazky/

### GitHub Pages 404 error
1. Repository musí být **public** (ne private)
2. Zkontroluj v Settings → Pages že je aktivován

---

## 📞 Podpora

Pokud máš jakékoliv problémy:
1. Zkontroluj GitHub Actions logy
2. Ověř Settings → Pages nastavení
3. Ujisti se, že jsou všechny soubory committnuté

---

## 📄 Licence

Školní projekt - Soul Knight Wiki

**Vytvořeno:** 4. ledna 2025  
**Autor oprav:** Claude AI  
**GitHub:** https://github.com/R4-D3K/SoulKnightWiki
