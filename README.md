# pbp_store_mobile

## pbp-tugas6

Agar README tidak terlalu panjang, jawaban tiap tugas saya taruh di branch `tugas<i>` dengan i nomor tugas

#### Jawaban Pertanyaan:

# Elemen Dasar Flutter

## Apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

- **Stateless Widget**: Widget yang tidak memiliki state atau kondisi yang berubah setelah widget dibuat. Karena sifatnya tetap, tampilan stateless widget hanya dirender sekali dan tidak berubah kecuali widget diinisialisasi ulang. Contohnya adalah Text, Icon, dan widget sederhana lainnya.
- **Stateful Widget**: Widget yang memiliki state dan dapat berubah selama siklus hidup widget. Widget ini memungkinkan perubahan tampilan berdasarkan kondisi yang berbeda, yang dapat diperbarui menggunakan setState(). Contoh: Checkbox, Slider, dan Form.
- **Perbedaan Utama**: Stateless widget bersifat statis dan tidak dapat berubah, sedangkan stateful widget dinamis dan dapat berubah sesuai event yang terjadi.

## Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

- **MaterialApp**: Mengelola keseluruhan aplikasi dan memberikan tema, rute, dan navigasi.
- **Scaffold**: Struktur dasar aplikasi, menyediakan struktur untuk AppBar, body, dan floating action button.
- **AppBar**: Header pada bagian atas aplikasi yang menampilkan judul.
- **IconButton**: Tombol yang berisi ikon, digunakan untuk aksi seperti Lihat Daftar Produk, Tambah Produk, dan Logout.
- **Snackbar**: Widget pop-up sementara yang memberikan notifikasi atau pesan kepada pengguna.
- **Container**: Digunakan untuk menata dan memberi padding pada widget.

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi setState() digunakan untuk memberi tahu Flutter bahwa ada perubahan state pada widget, sehingga widget perlu diperbarui dan dirender ulang. Variabel yang terdampak adalah semua variabel yang ditentukan di dalam kelas State dan digunakan dalam proses rendering widget. Dengan setState(), tampilan aplikasi dapat berubah dinamis sesuai dengan perubahan variabel state.

## Jelaskan perbedaan antara const dengan final.

- **const**: Digunakan untuk nilai yang tetap dan konstan pada waktu kompilasi. Nilai ini harus diketahui saat kode ditulis, tidak dapat diubah setelah ditentukan.
- **final**: Digunakan untuk nilai yang hanya bisa diinisialisasi sekali, namun nilainya bisa ditentukan di runtime, bukan harus di compile-time.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

1. **Buat aplikasi baru**: menggunakan flutter create pbp_store_mobile
2. **Tiga Tombol Sederhana**: Dibuat menggunakan IconButton dalam Column di dalam Scaffold.
3. **Warna-Warna Tombol Berbeda**: Setiap tombol memiliki warna berbeda menggunakan atribut color pada IconButton.
4. **Snackbar Pesan**: Menggunakan ScaffoldMessenger.of(context).showSnackBar() untuk menampilkan Snackbar saat tombol ditekan.
5. **Menambah Interaksi Pada Tombol**: Menggunakan onPressed pada setiap tombol untuk memunculkan Snackbar dengan pesan yang sesuai.
6. **Menerapkan Stateless dan Stateful Widgets**: Struktur dasar aplikasi menggunakan widget stateless, sedangkan widget interaktif (seperti tombol) menggunakan stateful widget jika ada kondisi yang bisa berubah.
