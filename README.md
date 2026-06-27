# Scan Obat - Sistem Scan Barcode Obat

Sistem web untuk scan barcode obat menggunakan kamera HP, dengan database Supabase dan export/import Excel.

## Fitur

- **Scan Barcode** - Menggunakan kamera HP untuk scan barcode/nama obat
- **Tambah Manual** - Input data obat secara manual
- **Edit Data** - Ubah data obat jika ada kesalahan
- **Hapus Data** - Hapus data obat
- **Export Excel** - Download data dalam format Excel (.xlsx)
- **Import Excel** - Upload data awal dari file Excel
- **Multi User** - Bisa digunakan banyak orang (via browser)
- **Responsive** - Tampilan optimal di HP dan desktop

## Teknologi

- **Frontend**: HTML5 + Bootstrap 5
- **Backend**: Python Flask
- **Database**: Supabase (PostgreSQL)
- **Scanner**: HTML5-QRCode (ZXing)
- **Excel**: OpenPyXL

## Cara Setup

### 1. Install Python Dependencies

```bash
pip install -r requirements.txt
```

### 2. Setup Supabase Database

1. Buat akun di [Supabase](https://supabase.com)
2. Buat project baru
3. Buka **SQL Editor**
4. Jalankan script dari file `setup_database.sql`
5. Copy **Project URL** dan **anon/public key** dari Settings > API

### 3. Konfigurasi Environment Variables

Buat file `.env` di root project:

```env
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_KEY=your-anon-key-here
```

Atau copy dari `.env.example`:

```bash
copy .env.example .env
```

Kemudian edit file `.env` dan isi dengan credentials Supabase Anda.

### 4. Jalankan Aplikasi

```bash
python app.py
```

Aplikasi akan berjalan di: `http://localhost:5000`

### 5. Akses dari HP

1. Pastikan HP dan komputer terhubung ke WiFi yang sama
2. Cari IP address komputer Anda (contoh: 192.168.1.100)
3. Buka browser di HP dan akses: `http://192.168.1.100:5000`

## Cara Menggunakan

### Scan Barcode Obat

1. Klik tombol **Mulai Scan**
2. Arahkan kamera ke barcode obat
3. Jika obat sudah ada di database → Qty otomatis bertambah
4. Jika obat belum ada → Isi nama obat dan klik **Simpan**

### Tambah Manual

1. Isi nama obat dan qty
2. Klik **Simpan**

### Edit Data

1. Klik icon pensil di kolom **Aksi**
2. Ubah data yang diperlukan
3. Klik **Simpan**

### Hapus Data

1. Klik icon tempat sampah di kolom **Aksi**
2. Konfirmasi penghapusan

### Export Excel

1. Klik tombol **Export Excel**
2. File akan otomatis terdownload

### Import Excel

1. Klik tombol **Import Excel**
2. Pilih file Excel (.xlsx)
3. Klik **Import**

Format Excel:
| No | Nama Obat | Qty | Tanggal |
|----|-----------|-----|---------|
| 1  | Paracetamol | 10 | 27-06-2026 |

## Struktur Database

**Tabel: obat**
- `id` - Primary key (auto increment)
- `nama_obat` - Nama obat (text)
- `qty` - Jumlah/quantity (integer)
- `tanggal` - Tanggal scan (timestamp)
- `created_at` - Waktu pembuatan record (timestamp)

## Deployment

Untuk deployment ke server publik, Anda bisa menggunakan:
- **Heroku**
- **Railway**
- **Render**
- **Vercel** (untuk frontend) + Supabase (untuk backend)

## Catatan Penting

- Kamera hanya bisa diakses via HTTPS atau localhost
- Untuk akses dari HP, gunakan HTTPS atau deploy ke server publik
- Data akan otomatis tersimpan di Supabase cloud database
- Backup data secara berkala dengan export Excel

## Troubleshooting

**Kamera tidak bisa diakses:**
- Pastikan browser mengizinkan akses kamera
- Gunakan HTTPS atau localhost
- Cek permissions di browser settings

**Error koneksi Supabase:**
- Cek file `.env` sudah terisi dengan benar
- Pastikan Supabase project aktif
- Cek internet connection

**Data tidak muncul:**
- Refresh halaman
- Cek console browser untuk error
- Pastikan tabel `obat` sudah dibuat di Supabase

## Lisensi

Free to use and modify.

## Support

Untuk pertanyaan atau issue, silakan buat issue di repository ini.
