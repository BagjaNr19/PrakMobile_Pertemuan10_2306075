# Pertemuan 10 - Praktikum Pemrograman Mobile

Halo! 👋 Selamat datang di repositori proyek Praktikum Pemrograman Mobile (Pertemuan 10).
Proyek ini dikembangkan oleh **Rizky Bagja N** (NIM: 2306075).

## 📝 Deskripsi Proyek
Proyek ini merupakan implementasi halaman login sederhana menggunakan Flutter. Pada tugas kali ini, telah dilakukan beberapa pembaruan dari modul sebelumnya, di antaranya:
1. **Penambahan Kolom Password**: Menambahkan widget `TextFormField` untuk input password guna melengkapi form login. Kolom password ini juga dilengkapi dengan fitur visibilitas (ikon mata) untuk menampilkan atau menyembunyikan teks sandi yang diketik.
2. **Implementasi Validator**: Mengubah input yang awalnya menggunakan `TextField` biasa menjadi `TextFormField` dan membungkusnya di dalam widget `Form`. Validator ini berfungsi untuk:
   - Memastikan kolom **username** tidak boleh kosong.
   - Memastikan kolom **password** tidak boleh kosong dan minimal terdiri dari 6 karakter.
   
   Jika form belum diisi dengan benar dan tombol login ditekan, maka pesan peringatan (error) akan otomatis muncul di bawah kolom input yang bersangkutan (menggantikan penggunaan `AlertDialog` agar antarmuka lebih rapi dan standar).

## 🛠️ Teknologi yang Digunakan
- **Flutter SDK** & **Dart**
- **Shared Preferences** (digunakan untuk menyimpan sesi login pengguna)

## 🚀 Cara Menjalankan
1. Pastikan Anda sudah menginstal Flutter pada perangkat Anda.
2. Lakukan *clone* repositori ini ke komputer Anda.
3. Buka terminal atau *command prompt* dan arahkan ke direktori proyek ini.
4. Jalankan perintah `flutter pub get` untuk mengunduh seluruh dependensi yang dibutuhkan.
5. Jalankan aplikasi menggunakan perintah `flutter run`.

Terima kasih telah mengunjungi repositori ini. Semoga proyek ini dapat memberikan manfaat dan memenuhi kriteria penilaian tugas praktikum dengan baik. 🙏
