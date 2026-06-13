# Aplikasi Flutter dengan Local Storage (SharedPreferences)

Aplikasi Flutter ini dirancang untuk mendemonstrasikan implementasi penyimpanan lokal (**Local Storage**) menggunakan package `shared_preferences` untuk menangani sesi autentikasi pengguna (Login/Logout) serta operasi **CRUD (Create, Read, Update, Delete) Produk**.

## 📌 Fitur Utama

### 1. Autentikasi Pengguna (Login/Logout)
- Menyimpan status login pengguna (`isLogin` dan `username`) secara lokal.
- Sesi tetap terjaga meskipun aplikasi ditutup dan dibuka kembali.
- Form login dilengkapi dengan validasi input (Username tidak boleh kosong, Password minimal 6 karakter).
- Pilihan untuk melihat/menyembunyikan password (*Show/Hide Password*).

### 2. CRUD Produk
- **Create**: Menambahkan produk baru melalui modal bottom sheet yang dinamis dengan validasi data (Nama, Deskripsi, dan Harga).
- **Read**: Menampilkan daftar produk yang tersimpan dalam format Card yang responsif dan estetis.
- **Update**: Memperbarui informasi produk yang sudah ada (menggunakan ID unik bertipe timestamp).
- **Delete**: Menghapus produk dari daftar dengan dialog konfirmasi terlebih dahulu untuk menghindari ketidaksengajaan.

### 3. Pengolahan Data Lokal (Local Storage)
- Semua produk disimpan dalam format JSON string list (`List<String>`) pada `SharedPreferences`.
- Data produk tetap aman dan tidak terhapus ketika user melakukan logout (hanya sesi user saja yang dibersihkan).

---

## 🛠️ Teknologi & Packages

- **SDK**: Flutter (Dart >=3.11.0)
- **State Management**: `StatefulWidget` (State lokal)
- **Local Storage**: `shared_preferences`
- **Tampilan/UI**: Material 3 dengan gaya modern (Glassmorphism card, rounded sheets, dan custom validation).

---

## 📂 Struktur Proyek

```
lib/
├── main.dart             # Entry point aplikasi & pengecekan sesi login
├── models/
│   └── product_model.dart # Model representasi produk & parsing JSON
└── pages/
    ├── login_page.dart   # Halaman login dengan validasi
    └── home_page.dart    # Halaman utama & pengelolaan CRUD produk
```

---

## 🚀 Cara Menjalankan Aplikasi

1. Pastikan Flutter SDK telah terinstal di perangkat Anda.
2. Clone atau salin direktori proyek ini.
3. Jalankan perintah untuk mengunduh package/dependencies:
   ```bash
   flutter pub get
   ```
4. Hubungkan perangkat emulator atau fisik Anda.
5. Jalankan aplikasi dengan perintah:
   ```bash
   flutter run
   ```
   Atau untuk target web/Chrome:
   ```bash
   flutter run -d chrome
   ```

   ---

   ## 📝 Perubahan Terbaru (ringkasan)

   - Commit: "Update product_model and home_page"
      - Files changed: `lib/models/product_model.dart`, `lib/pages/home_page.dart`
   - Commit: "refactoring"
      - Files added: `lib/pages/product_detail_page.dart`, `lib/pages/product_page.dart`, `lib/widgets/product_card.dart`

   Jika kamu hanya ingin meng-upload perubahan yang sudah dimodifikasi (tanpa menambahkan file baru), gunakan:

   ```bash
   git add lib/models/product_model.dart lib/pages/home_page.dart
   git commit -m "Update product_model and home_page"
   git push origin main
   ```

   Untuk menambahkan file baru lalu push (yang sudah saya lakukan dengan commit "refactoring") gunakan:

   ```bash
   git add lib/pages/product_detail_page.dart lib/pages/product_page.dart lib/widgets/
   git commit -m "refactoring"
   git push origin main
   ```

   ## ℹ️ Cara Berkontribusi Singkat

   - Buat branch baru untuk fitur/bugfix: `git checkout -b feat/nama-fitur`
   - Tambah dan commit perubahan secara terpisah untuk fitur yang berbeda
   - Buat Pull Request ke `main` ketika siap untuk review

   ---

   Jika mau, saya bisa juga membuat file `CHANGELOG.md` otomatis berisi daftar commit; mau saya tambahkan?
