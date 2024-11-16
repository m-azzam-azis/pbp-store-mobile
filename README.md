# pbp_store_mobile

## pbp-tugas9

Agar README tidak terlalu panjang, jawaban tiap tugas saya taruh di branch `tugas<i>` dengan i nomor tugas.

#### Jawaban Pertanyaan:

# Integrasi Layanan Web Django dengan Aplikasi Flutter

### Mengapa Kita Perlu Membuat Model untuk Pengambilan atau Pengiriman Data JSON?

Model berfungsi sebagai representasi data yang terstruktur dalam aplikasi. Saat bekerja dengan JSON, model mempermudah pengelolaan dan manipulasi data dengan memetakan data dari format JSON ke dalam objek Dart. Berikut adalah alasan utama mengapa model diperlukan:

- **Struktur Data yang Konsisten**: Model memastikan data yang diterima dari server memiliki struktur dan tipe yang tetap, sehingga meminimalkan kesalahan dalam pengelolaan data.
- **Pengelolaan Data yang Mudah**: Dengan model, kita dapat memanfaatkan metode atau atribut dalam objek untuk mengakses dan memanipulasi data secara langsung.
- **Pemeliharaan Kode**: Kode menjadi lebih mudah dipahami dan dikelola, terutama jika ada perubahan dalam struktur data JSON di masa mendatang.

Jika kita tidak membuat model terlebih dahulu, berikut adalah potensi masalah yang bisa terjadi:
- **Kode Tidak Terstruktur**: Data harus diakses secara manual melalui map atau list, yang rentan terhadap kesalahan.
- **Tidak Ada Validasi Data**: Tanpa model, tidak ada cara mudah untuk memeriksa apakah data yang diterima sesuai dengan yang diharapkan.
- **Kesulitan Debugging**: Kesalahan yang muncul karena perubahan struktur JSON akan lebih sulit dilacak.


### Fungsi dari Library `http` yang Diimplementasikan

Library `http` digunakan untuk mengelola komunikasi antara aplikasi Flutter dan server. Fungsi utama dari library ini meliputi:

1. **Mengirimkan Permintaan HTTP**:
   - Mendukung berbagai metode HTTP seperti `GET`, `POST`, `PUT`, dan `DELETE` untuk berinteraksi dengan API.

2. **Menerima Respons dari Server**:
   - Mengambil data dari server, baik berupa teks, JSON, atau format lain, dan mempermudah parsing respons tersebut.

3. **Penanganan Kesalahan**:
   - Memproses status error HTTP seperti 404 (Not Found) atau 500 (Internal Server Error), sehingga aplikasi dapat merespons dengan baik terhadap kegagalan komunikasi.

Pada tugas ini, library `http` digunakan untuk mengirim permintaan data produk dari server Django dan memproses data JSON yang dikembalikan.


### Fungsi dari `CookieRequest`

`CookieRequest` adalah bagian dari library `pbp_django_auth` yang digunakan untuk mengelola otentikasi pengguna dan menjaga sesi pengguna dengan server Django. Fungsi utama dari `CookieRequest` adalah:

1. **Mengelola Sesi Pengguna**:
   - Menyimpan cookie yang digunakan untuk mempertahankan sesi login pengguna di seluruh aplikasi.

2. **Mengirimkan Data yang Terotentikasi**:
   - Setiap permintaan HTTP yang dikirim akan menyertakan cookie sesi, memungkinkan server untuk mengenali pengguna.

3. **Mempermudah Login dan Logout**:
   - Memiliki metode bawaan untuk melakukan login, logout, dan validasi token.

`CookieRequest` perlu dibagikan ke seluruh komponen aplikasi Flutter agar semua permintaan HTTP yang membutuhkan otentikasi dapat menggunakan sesi yang sama.


### Mekanisme Pengiriman Data dari Input hingga Ditampilkan pada Flutter

1. **Input Data oleh Pengguna**:
   - Pengguna mengisi data di Flutter melalui form atau interaksi lainnya.

2. **Pengiriman Data ke Server**:
   - Data dikirim ke server Django melalui permintaan HTTP (misalnya dengan metode `POST`).

3. **Pemrosesan Data di Server**:
   - Server Django memproses data yang diterima, menyimpannya ke basis data, dan mengembalikan respons, biasanya dalam format JSON.

4. **Pengambilan dan Parsing Data di Flutter**:
   - Aplikasi Flutter mengambil data dari server menggunakan metode `GET` dan mem-parsing data JSON menjadi objek model.

5. **Menampilkan Data**:
   - Data yang telah diproses ditampilkan dalam widget Flutter, seperti `ListView` atau `Text`.


### Mekanisme Autentikasi (Login, Register, Logout)

#### 1. **Login**:
   - **Input Data**: Pengguna memasukkan email dan password ke form di Flutter.
   - **Pengiriman Data ke Django**: Data dikirim ke endpoint login Django menggunakan `POST`.
   - **Validasi oleh Django**:
     - Django memeriksa kredensial pengguna.
     - Jika berhasil, Django mengembalikan cookie sesi.
   - **Sesi di Flutter**: `CookieRequest` menyimpan cookie sesi, yang digunakan untuk permintaan berikutnya.
   - **Menu Ditampilkan**: Setelah berhasil login, menu yang memerlukan otentikasi dapat diakses.

#### 2. **Register**:
   - **Input Data**: Pengguna memasukkan informasi akun baru.
   - **Pengiriman Data ke Django**: Data dikirim ke endpoint register menggunakan `POST`.
   - **Proses di Django**:
     - Django membuat akun baru di basis data.
     - Django mengembalikan respons keberhasilan ke Flutter.
   - **Akses Login**: Pengguna diarahkan untuk login menggunakan akun baru.

#### 3. **Logout**:
   - **Permintaan Logout**: Pengguna memilih opsi logout di aplikasi.
   - **Pengiriman Permintaan ke Django**: `CookieRequest` mengirimkan permintaan logout ke server Django.
   - **Penghapusan Sesi**:
     - Django menghapus sesi pengguna.
     - `CookieRequest` menghapus cookie dari aplikasi Flutter.


### Implementasi Checklist Secara Step-by-Step

1. **Membuat Model di Flutter**:
   - Menyesuaikan model dengan struktur JSON yang dikembalikan server Django.
   - Menggunakan fitur `fromJson` untuk parsing data dari JSON.

2. **Membuat Endpoint Auth di Django**:
   - Membuat view dan serializer untuk menangani permintaan data produk.
   - Menggunakan format JSON sebagai respons utama.

3. **Menghubungkan Flutter dan Django**:
   - Menggunakan library `http` dan `CookieRequest` untuk mengirim permintaan dan menerima data.

4. **Membuat Tampilan Utama**:
   - Menampilkan daftar produk dalam `ListView`.
   - Menggunakan `FutureBuilder` untuk menunggu data dari server.

5. **Menambah Navigasi ke Halaman Detail**:
   - Menambahkan navigasi menggunakan `Navigator.push`.
   - Membuat halaman baru untuk menampilkan detail produk.

6. **Mengimplementasikan Otentikasi**:
   - Membuat form login dan register di Flutter.
   - Menghubungkan form dengan endpoint Django.
   - Menggunakan `CookieRequest` untuk menyimpan sesi pengguna.

7. **Menguji Aplikasi**:
   - Memastikan semua fitur berfungsi, termasuk login, daftar produk, detail produk, dan logout.
   - Memperbaiki bug berdasarkan hasil pengujian.