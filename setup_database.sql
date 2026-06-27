-- SQL untuk membuat tabel obat di Supabase
-- Jalankan SQL ini di Supabase SQL Editor

CREATE TABLE obat (
    id BIGSERIAL PRIMARY KEY,
    nama_obat TEXT NOT NULL,
    qty INTEGER NOT NULL DEFAULT 1,
    tanggal TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Index untuk pencarian berdasarkan nama obat
CREATE INDEX idx_obat_nama ON obat(nama_obat);

-- Index untuk sorting berdasarkan tanggal
CREATE INDEX idx_obat_tanggal ON obat(tanggal DESC);

-- Enable Row Level Security (RLS) jika ingin multi-user
ALTER TABLE obat ENABLE ROW LEVEL SECURITY;

-- Policy untuk mengizinkan semua operasi (untuk development)
CREATE POLICY "Allow all operations" ON obat
    FOR ALL
    USING (true)
    WITH CHECK (true);
