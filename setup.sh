#!/bin/bash
# ═══════════════════════════════════════════════════════
#  Baby Mo Bedtime — Quick Setup Script (Mac / Linux)
# ═══════════════════════════════════════════════════════
set -e

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo ""
echo -e "${BLUE}🌙  Baby Mo Bedtime App — Setup${NC}"
echo "================================="
echo ""

# Check Node.js
if ! command -v node &> /dev/null; then
    echo -e "${YELLOW}⚠️  Node.js tidak ditemukan!${NC}"
    echo "   Download dari: https://nodejs.org  (pilih LTS version)"
    echo "   Setelah install, jalankan script ini lagi."
    exit 1
fi

NODE_VERSION=$(node -v)
echo -e "${GREEN}✓ Node.js ditemukan: $NODE_VERSION${NC}"

# Check npm
if ! command -v npm &> /dev/null; then
    echo -e "${YELLOW}⚠️  npm tidak ditemukan. Install Node.js dari https://nodejs.org${NC}"
    exit 1
fi

echo ""
echo "📦 Menginstall dependencies..."
npm install

echo ""
echo "🤖 Setup Android..."
npx cap add android 2>/dev/null || echo "   (Android sudah ada, skip)"

echo ""
echo "🔄 Sync files ke platform native..."
npx cap sync

echo ""
echo -e "${GREEN}✅  Setup selesai!${NC}"
echo ""
echo "═══════════════════════════════════════════"
echo "  LANGKAH SELANJUTNYA:"
echo "═══════════════════════════════════════════"
echo ""
echo "  📱  Untuk TEST di Android:"
echo "      1. Hubungkan HP Android dengan kabel USB"
echo "      2. Aktifkan USB Debugging di HP"
echo "         (Settings > Developer Options > USB Debugging)"
echo "      3. Jalankan:  npm run android"
echo ""
echo "  🖥️  Untuk BUKA di Android Studio:"
echo "      npm run open:android"
echo "      Lalu klik tombol ▶ Run"
echo ""
echo "  🌐  Untuk test di BROWSER sekarang:"
echo "      Buka file: www/index.html di Chrome"
echo ""
echo "═══════════════════════════════════════════"
echo ""
