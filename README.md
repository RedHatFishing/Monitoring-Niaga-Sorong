# Dashboard Monitoring Pelanggan – PLN UP3 Sorong

Dashboard monitoring pelanggan Bidang Pemasaran dan Niaga PLN UP3 Sorong.
Aplikasi statis (HTML + JavaScript) yang berjalan sepenuhnya di browser.
Data diunggah (CSV/XLSX) dan diproses lokal, tidak dikirim ke server mana pun.

## Demo

Setelah deploy: `https://<username>.github.io/<nama-repo>/`

## Deploy ke GitHub Pages

1. Buat repository baru di GitHub (mis. `dashboard-pln-up3-sorong`).
2. Upload isi folder ini, atau lewat terminal:
   ```bash
   git init
   git add .
   git commit -m "Initial commit: dashboard monitoring pelanggan"
   git branch -M main
   git remote add origin https://github.com/<username>/<nama-repo>.git
   git push -u origin main
   ```
3. Di GitHub: **Settings → Pages → Build and deployment → Source: GitHub Actions**.
4. Workflow `Deploy ke GitHub Pages` akan berjalan otomatis. Pantau di tab **Actions**.
5. Situs aktif di URL yang tertera pada hasil workflow.

Setiap `git push` ke branch `main` akan otomatis memperbarui situs.

## Menjalankan lokal

Buka `index.html` langsung di browser, atau:

```bash
python3 -m http.server 8000
# lalu buka http://localhost:8000
```

## Catatan

- Membutuhkan koneksi internet untuk memuat library via CDN (Tailwind, Chart.js, SheetJS, Font Awesome, Google Fonts).
- Repository publik berarti halaman dapat diakses siapa saja. Untuk akses terbatas gunakan GitHub Enterprise (Pages privat) atau repo private dengan plan yang mendukung.
- Jangan commit file data pelanggan asli (sudah diblokir di `.gitignore`).

## Struktur

```
.
├── index.html
├── README.md
├── .nojekyll
├── .gitignore
└── .github/workflows/deploy.yml
```
