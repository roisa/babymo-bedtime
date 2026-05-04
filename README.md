# 🌙 Baby Mo — Tidur Yuk!
### Bedtime Ritual App untuk Anak Muslim

Aplikasi ritual tidur 4 langkah untuk anak usia 2–6 tahun:
gosok gigi → ganti baju → baca doa → tarik selimut 💤

---

## ⚡ CARA PALING CEPAT — Coba Sekarang (0 menit setup)

**Tidak perlu install apa pun!**

1. Buka folder `www/`
2. Klik dua kali file `index.html`
3. File terbuka di browser (pakai **Chrome** untuk hasil terbaik)
4. Tekan F12 → klik ikon HP di toolbar → pilih ukuran "iPhone 14" atau "Pixel 7"
5. ✅ Langsung bisa dimainkan!

> 💡 **Atau kirim file `index.html` ke HP Android kamu via WhatsApp/email,**
> buka di Chrome HP, dan mainkan langsung bersama anakmu!

---

## 📱 CARA 2 — Install ke HP (5 menit, tanpa kabel)

Ubah menjadi "app" yang bisa dibuka dari home screen HP!

### Di HP Android (Chrome):
1. Buka `index.html` di Chrome HP
2. Tap menu ⋮ (tiga titik) di kanan atas
3. Tap **"Add to Home Screen"** / **"Tambah ke Layar Utama"**
4. Tap **"Add"**
5. ✅ App muncul di home screen seperti app sungguhan!

### Di iPhone (Safari):
1. Buka `index.html` di Safari
2. Tap tombol Share (kotak dengan panah atas) 
3. Scroll ke bawah, tap **"Add to Home Screen"**
4. Tap **"Add"**
5. ✅ App muncul di home screen!

> 🌟 Mode ini disebut **PWA (Progressive Web App)** — bekerja offline setelah dibuka pertama kali!

---

## 🚀 CARA 3 — Build APK Android Sungguhan (30–60 menit)

Untuk APK yang bisa dibagikan atau diunggah ke Play Store.

### Yang Kamu Butuhkan:
- [ ] **Node.js** — download di [nodejs.org](https://nodejs.org) (pilih LTS)
- [ ] **Android Studio** — download di [developer.android.com/studio](https://developer.android.com/studio)
- [ ] Kabel USB untuk test di HP (atau gunakan emulator)

### Langkah-langkah:

#### 1️⃣ Install Node.js
- Buka [nodejs.org](https://nodejs.org)
- Download versi **LTS** (tulisan hijau)
- Install seperti biasa (Next, Next, Finish)
- Buka Terminal/Command Prompt, ketik `node -v` untuk cek ✅

#### 2️⃣ Install Android Studio
- Download dari [developer.android.com/studio](https://developer.android.com/studio)
- Install dengan semua opsi default
- Buka Android Studio, ikuti wizard setup awal
- ⏳ Ini yang paling lama, sekitar 10–20 menit

#### 3️⃣ Setup Project
**Mac / Linux** — buka Terminal di folder ini, ketik:
```bash
chmod +x setup.sh
./setup.sh
```

**Windows** — klik dua kali file `setup.bat`

#### 4️⃣ Jalankan di HP Android
Hubungkan HP Android dengan kabel USB:
1. Di HP: pergi ke **Settings > About Phone**
2. Tap **"Build Number"** sebanyak 7 kali (untuk unlock Developer Mode)
3. Kembali ke Settings > **Developer Options**
4. Aktifkan **"USB Debugging"**
5. Hubungkan HP ke komputer, pilih **"File Transfer"** jika diminta
6. Di Terminal/CMD, ketik:
   ```bash
   npm run android
   ```
7. ✅ App akan otomatis terinstall dan terbuka di HP!

#### 5️⃣ Buat APK untuk dibagikan
Di Android Studio:
1. Menu **Build > Build Bundle(s) / APK(s) > Build APK(s)**
2. Tunggu proses build selesai
3. Klik **"Locate"** untuk menemukan file APK
4. APK bisa langsung dikirim via WhatsApp ke orang tua lain! 🎉

---

## 🍎 iOS (iPhone/iPad)

Untuk build ke iOS kamu perlu:
- Mac dengan **Xcode** terinstall (App Store, gratis)
- Akun Apple Developer (Rp 1.2jt/tahun) untuk distribusi di luar App Store

Setelah `npm install`, jalankan:
```bash
npx cap add ios
npx cap sync
npm run open:ios
```

Lalu di Xcode, klik ▶ Run.

---

## 🎮 Fitur Aplikasi

| Langkah | Interaksi | Detail |
|---------|-----------|--------|
| 🪥 Gosok Gigi | Geser kiri–kanan | Sikat 7 kali, gigi makin putih |
| 👕 Ganti Baju | Ketuk 3 item | Baju tidur, celana, boneka |
| 🤲 Baca Doa | Ketuk berurutan | Audio doa Arab + terjemahan |
| 💤 Tarik Selimut | Seret ke atas | Karakter langsung tidur |
| 🌙 Mode Tidur | Otomatis | Lullaby + layar meredup pelan |

### Teknologi di Dalamnya:
- **Wake Lock API** — layar tidak mati saat anak sedang bermain
- **Web Audio API** — lullaby pentatonik generatif, bukan file audio
- **Speech Synthesis** — pengucapan doa Arabic
- **Vibration API** — haptic feedback di Android
- **Capacitor** — wrapper untuk Android & iOS native

---

## 🎨 Menambahkan Karakter Baby Mo

Saat ini app menggunakan emoji sebagai placeholder. Untuk menambahkan karakter Baby Mo asli:

1. Export dari software 3D: **PNG transparan, 4K resolution**
2. Buka `www/index.html`
3. Cari emoji yang ingin diganti, misalnya `🌙` di HomeScreen
4. Ganti dengan: `<img src="babymo-happy.png" style="width:100px"/>`

**File yang paling dibutuhkan:**
```
www/images/
├── babymo-happy.png       ← Home screen & step completions
├── babymo-sleeping.png    ← Sleep mode
├── babymo-thinking.png    ← Doa step
└── babymo-surprised.png   ← Tooth brushing reactions
```

---

## 🛠️ Troubleshooting

**"npm tidak ditemukan"**
→ Install Node.js dari nodejs.org, restart Terminal/CMD

**"Android Studio tidak bisa build"**
→ Buka Android Studio > SDK Manager > Install Android SDK 34

**"HP tidak terdeteksi"**
→ Pastikan USB Debugging aktif, coba ganti kabel USB

**"Suara doa tidak keluar"**
→ Normal di beberapa browser/HP tanpa Arabic voice pack. Install "Google Text-to-Speech" di Play Store lalu pilih bahasa Arab di Settings > Language

**App terasa lambat pertama kali?**
→ Normal — Babel perlu parse JSX sekali. Setelah itu smooth.

---

## 📊 Roadmap Pengembangan

- [ ] Tambah karakter Baby Mo asli (3D renders dari suami)
- [ ] Audio doa yang direkam (bukan text-to-speech)
- [ ] Pilihan doa (Doa tidur lengkap, Al-Ikhlas, Al-Falaq, An-Nas)
- [ ] Pilihan musik tidur (Asmaul Husna, Murottal anak)
- [ ] Progress tracking (berapa malam berturut-turut)
- [ ] Mode Ramadan (doa sahur/berbuka)
- [ ] Multi-bahasa (Indonesia, English, Melayu)
- [ ] Upload ke Google Play Store

---

## 💰 Untuk Monetisasi

App ini bisa:
1. **Gratis** di Play Store → membangun brand Baby Mo
2. **Freemium** → langkah 1–2 gratis, doa & lullaby premium Rp 25.000
3. **Bundle** dengan app Hijaiyah → paket "Baby Mo Islamic Bundle"
4. **B2B** → lisensi ke PAUD Islam & TPA

---

*Dibuat dengan ❤️ untuk keluarga Muslim Indonesia*
*Baby Mo · babymo.id · 2026*
