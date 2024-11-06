# pbp_store_mobile

## pbp-tugas8

Agar README tidak terlalu panjang, jawaban tiap tugas saya taruh di branch `tugas<i>` dengan i nomor tugas.

#### Jawaban Pertanyaan:

# Flutter Navigation, Layouts, Forms, and Input Elements

## Penggunaan `const` di flutter

### Apa kegunaan `const` di Flutter?

`const` di Flutter digunakan untuk mendefinisikan nilai tetap/konstan yang sudah diketahui saat kompilasi.

### Keuntungan Menggunakan `const`

Keuntungannya adalah meningkatkan efisiensi waktu dan memori karena Flutter tidak perlu merender ulang elemen yang konstan.

### dan Kapan Sebaiknya Digunakan?

`const` sebaiknya digunakan untuk elemen yang tidak berubah selama aplikasi berjalan, seperti teks statis atau ikon. Tidak cocok digunakan jika elemen yg dirender dinamis seperti form atau infocard.

## Jelaskan dan Bandingkan Penggunaan `Column` dan `Row` pada Flutter.

`Column` dan `Row` merupakan sama-sama widget tata letak (_layout_). Keduanya mengatur posisi dan ukuran anak-anak widget di layar.

- **Column:** untuk menyusun widget lain secara **vertikal**
- **Row:** untuk menyusun widget lain secara **horizontal**

## Elemen Input yang Digunakan pada Form

Pada tugas ini, elemen input yang digunakan adalah `TextField` untuk teks dan `ElevatedButton` untuk aksi submit. Elemen input lain seperti Checkbox, Radio, dan Dropdown belum digunakan untuk tugas ini.

## Cara Mengatur Tema Aplikasi agar Konsisten

Tema aplikasi diatur melalui `ThemeData`, yang memungkinkan penggunaan warna, font, dan gaya secara konsisten di seluruh aplikasi. Pada aplikasi ini, beberapa tema sudah diterapkan dalam main.dart, seperti warna dan material3.

## Cara Menangani Navigasi dalam Aplikasi Multi-Halaman

Navigasi dilakukan menggunakan `Navigator`, yang memungkinkan berpindah antar halaman dengan `push` dan `pop`. Dengan ini, aplikasi dapat berpindah halaman dengan mulus dan tetap menjaga urutan halaman.
