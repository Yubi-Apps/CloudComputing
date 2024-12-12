# Dokumentasi API Aplikasi YUBI


## 2. Prediksi Hama

### `POST /api/getPredictionOutput`
Unggah gambar untuk prediksi hama

**Request Body:**
- `file`: File gambar umbi (multipart/form-data)

**Response:**
- `200 OK`:
  * `jenis_hama`: Nama hama yang terdeteksi
  
---
