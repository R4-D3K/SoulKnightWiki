# Soul Knight Wiki - Download Images Script
# Stahuje všechny obrázky z původního webu

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Soul Knight Wiki - Download Images" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$baseUrl = "https://lab.uzlabina.cz/~kratoja1/AS/frish/Web/obrazky"
$targetDir = "obrazky"

# Vytvoř strukturu složek
Write-Host "Creating directory structure..." -ForegroundColor Yellow
$directories = @(
    "$targetDir",
    "$targetDir/characters",
    "$targetDir/enemies", 
    "$targetDir/buffs",
    "$targetDir/lobby",
    "$targetDir/gallery"
)

foreach ($dir in $directories) {
    if (-not (Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force | Out-Null
    }
}

# Funkce pro stažení souboru
function Download-File {
    param(
        [string]$url,
        [string]$output
    )
    
    try {
        Write-Host "  Downloading: $output" -ForegroundColor Gray
        Invoke-WebRequest -Uri $url -OutFile $output -ErrorAction Stop
        return $true
    }
    catch {
        Write-Host "  Failed: $output" -ForegroundColor Red
        return $false
    }
}

# Hlavní obrázky (root)
Write-Host ""
Write-Host "Downloading main images..." -ForegroundColor Yellow
$mainImages = @(
    "wallpaper3.jpg",
    "soul_knight_logo1.png",
    "soul-knight-portal.png"
)

$downloaded = 0
$failed = 0

foreach ($img in $mainImages) {
    $url = "$baseUrl/$img"
    $output = "$targetDir/$img"
    if (Download-File -url $url -output $output) {
        $downloaded++
    } else {
        $failed++
    }
}

# Gallery obrázky
Write-Host ""
Write-Host "Downloading gallery images..." -ForegroundColor Yellow
$galleryImages = @(
    "fight_second_floor.jpg",
    "fighting_third_floor.webp",
    "lobby.jpg",
    "portal_end_boss.png",
    "Trader_in_dungeon.png"
)

foreach ($img in $galleryImages) {
    $url = "$baseUrl/gallery/$img"
    $output = "$targetDir/gallery/$img"
    if (Download-File -url $url -output $output) {
        $downloaded++
    } else {
        $failed++
    }
}

# Characters
Write-Host ""
Write-Host "Downloading character images..." -ForegroundColor Yellow
$characterImages = @(
    "Knight_0.webp",
    "Rogue_0.webp",
    "Witch_0.webp",
    "Assassin_0.webp",
    "Alchemist_0.webp",
    "Priestess_0.webp",
    "Npc_Mail_Guy.webp",
    "Npc_mentor.webp",
    "Npc_mount_merchant.webp",
    "Npc_Officer.webp",
    "Npc_Pets.webp",
    "Npc_Trader.webp",
    "Npc_weapon_smith.webp"
)

foreach ($img in $characterImages) {
    $url = "$baseUrl/characters/$img"
    $output = "$targetDir/characters/$img"
    if (Download-File -url $url -output $output) {
        $downloaded++
    } else {
        $failed++
    }
}

# Enemies
Write-Host ""
Write-Host "Downloading enemy images..." -ForegroundColor Yellow
$enemyImages = @(
    "Sprite_Goblin_Guard_Pistol.webp",
    "Sprite_Goblin_Guard_Goblin_Spear.webp",
    "Sprite_Goblin_Guard_Bow.webp",
    "Sprite_Elite_Goblin_Guard_Shotgun.webp",
    "Sprite_Elite_Goblin_Guard_Blowpipe.webp",
    "Sprite_Elite_Goblin_Guard_Axe.webp",
    "Sprite_Elite_Goblin_Archer.webp",
    "Sprite_Goblin_Shaman.webp",
    "Sprite_Goblin_Giant.webp",
    "Sprite_Easter_Bunny.webp",
    "Sprite_Devils_Snare.webp",
    "Sprite_Goblin_Priest.webp",
    "Sprite_Christmas_Treant.webp",
    "Sprite_Boar.webp",
    "Sprite_Dire_Boar.webp",
    "Sprite_GunShark.webp",
    "Sprite_Boomerang_Cactus.webp",
    "Sprite_Trumpet_Flower.webp",
    "Sprite_Fire_Goblin_Priest.webp"
)

foreach ($img in $enemyImages) {
    $url = "$baseUrl/enemies/$img"
    $output = "$targetDir/enemies/$img"
    if (Download-File -url $url -output $output) {
        $downloaded++
    } else {
        $failed++
    }
}

# Lobby
Write-Host ""
Write-Host "Downloading lobby images..." -ForegroundColor Yellow
$lobbyImages = @(
    "Living_Room_600.webp",
    "Workshop.webp",
    "Garden_4.3.7.webp",
    "Magic_Area.webp"
)

foreach ($img in $lobbyImages) {
    $url = "$baseUrl/lobby/$img"
    $output = "$targetDir/lobby/$img"
    if (Download-File -url $url -output $output) {
        $downloaded++
    } else {
        $failed++
    }
}

# Buffs
Write-Host ""
Write-Host "Downloading buff images..." -ForegroundColor Yellow
$buffImages = @(
    "Buff_Piercing_Crit.webp",
    "Buff_Accuracy.webp",
    "Buff_Shotgun.webp",
    "Buff_Charge.webp",
    "Buff_Pet.webp",
    "Buff_Radial_Blast.webp",
    "Buff_Bounce.webp",
    "Buff_Melee_Range.webp",
    "Buff_Combo.webp",
    "Buff_Fire_Rate.webp",
    "Buff_Monster_Explode.webp",
    "Buff_Crit_Health.webp",
    "Buff_Elemental_Staff.webp",
    "Buff_Electric_Pulse.webp",
    "Buff_Stay_Focused.webp",
    "Buff_Whirlwind_Slash.webp",
    "Buff_First_Strike.webp",
    "Buff_Emit_Bullet.webp",
    "Buff_Cyclic_Elemental.webp",
    "Buff_Kinetic.webp",
    "Buff_Pet_Charge.webp",
    "Buff_Hero's_Valor.webp",
    "Buff_Martial_Spirit.webp",
    "Buff_Laser.webp",
    "Buff_Reflect.webp",
    "Buff_Strong_Shield.webp",
    "Buff_Trap.webp",
    "Buff_Poison.webp",
    "Buff_Fire.webp",
    "Buff_Slow_Bullet.webp",
    "Buff_Freeze.webp",
    "Buff_Armor.webp",
    "Buff_Gold_Armor.webp",
    "Buff_Crit_Speed.webp",
    "Buff_Instant_Armor.webp",
    "Buff_Elemental_Armor.webp",
    "Buff_Sale.webp",
    "Buff_Health_Orb.webp",
    "Buff_Potion_Effectiveness.webp",
    "Buff_Energy_Orb.webp",
    "Buff_Gems.webp",
    "Buff_Health.webp",
    "Buff_Crate.webp",
    "Buff_Cooldown.webp",
    "Buff_Statue.webp",
    "Buff_Extra_Weapon.webp",
    "Buff_Energy.webp"
)

foreach ($img in $buffImages) {
    $url = "$baseUrl/buffs/$img"
    $output = "$targetDir/buffs/$img"
    if (Download-File -url $url -output $output) {
        $downloaded++
    } else {
        $failed++
    }
}

# Summary
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Download Complete!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Downloaded: $downloaded files" -ForegroundColor Green
if ($failed -gt 0) {
    Write-Host "Failed: $failed files" -ForegroundColor Red
}
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Check images in 'obrazky' folder"
Write-Host "2. Run: git add obrazky/"
Write-Host "3. Run: git commit -m 'Add images'"
Write-Host "4. Run: git push"
Write-Host ""
Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
