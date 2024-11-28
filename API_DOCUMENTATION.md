# Dokumentasi API Aplikasi YUBI
# Masih dalam tahap perencanaan dan masih bisa berubah

## 1. Autentikasi dan Manajemen Pengguna

### `POST /api/auth/register`
Registrasi pengguna baru

**Request Body:**
- `email`: Email pengguna (wajib)
- `password`: Password (wajib)
- `nama`: Nama lengkap pengguna

**Response:**
- `200 OK`: Registrasi berhasil
- `400 Bad Request`: Validasi gagal
- `409 Conflict`: Email sudah terdaftar

### `POST /api/auth/login`
Login pengguna

**Request Body:**
- `email`: Email pengguna
- `password`: Password

**Response:**
- `200 OK`: 
  * `token`: JWT authentication token
  * `user_id`: ID pengguna
- `401 Unauthorized`: Kredensial salah

### `GET /api/auth/profile`
Mendapatkan informasi profil pengguna

**Response:**
- `200 OK`:
  * `nama`: Nama pengguna
  * `email`: Email pengguna
  * `bergabung_sejak`: Tanggal registrasi

### `PUT /api/auth/profile`
Update informasi profil pengguna

**Request Body:**
- `nama`: Nama baru (opsional)
- `foto_profil`: Foto profil baru (opsional)

## 2. Prediksi Hama

### `POST /api/predict`
Unggah gambar untuk prediksi hama

**Request Body:**
- `image`: File gambar umbi (multipart/form-data)

**Response:**
- `200 OK`:
  * `jenis_hama`: Nama hama yang terdeteksi
  * `confidence`: Persentase kepercayaan (0-100%)
  * `rekomendasi`: Saran penanganan

## 3. Riwayat Prediksi

### `GET /api/history`
Mendapatkan daftar riwayat prediksi

**Query Parameters:**
- `page`: Halaman ke berapa (default: 1)
- `limit`: Jumlah item per halaman (default: 10)

**Response:**
- `200 OK`:
  * `total`: Total jumlah riwayat
  * `data`: Array riwayat prediksi
    - `id`: ID riwayat
    - `tanggal`: Waktu prediksi
    - `gambar`: URL gambar
    - `hasil_prediksi`: Detail prediksi

### `POST /api/history`
Menyimpan hasil prediksi ke riwayat

**Request Body:**
- `predict_id`: ID hasil prediksi
- `catatan`: Catatan tambahan (opsional)

**Response:**
- `201 Created`: Berhasil disimpan

### `DELETE /api/history/{id}`
Menghapus item riwayat spesifik

**Response:**
- `200 OK`: Berhasil dihapus
- `404 Not Found`: Riwayat tidak ditemukan

## 4. Artikel

### `GET /api/articles`
Mendapatkan daftar artikel

**Query Parameters:**
- `page`: Halaman ke berapa (default: 1)
- `limit`: Jumlah artikel per halaman (default: 10)
- `kategori`: Filter berdasarkan kategori (opsional)

**Response:**
- `200 OK`:
  * `total`: Total jumlah artikel
  * `data`: Array artikel
    - `id`: ID artikel
    - `judul`: Judul artikel
    - `ringkasan`: Ringkasan singkat
    - `thumbnail`: URL gambar thumbnail

### `GET /api/articles/{id}`
Mendapatkan detail artikel spesifik

**Response:**
- `200 OK`:
  * `id`: ID artikel
  * `judul`: Judul lengkap
  * `konten`: Isi artikel penuh
  * `penulis`: Nama penulis
  * `tanggal_publikasi`: Tanggal artikel dibuat

---

**Catatan Keamanan:**
- Semua endpoint yang memerlukan autentikasi harus menyertakan JWT token di header Authorization
- Gunakan HTTPS untuk semua komunikasi
- Implementasikan rate limiting untuk endpoint sensitif