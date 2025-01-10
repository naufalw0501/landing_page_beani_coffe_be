const { Pool } = require('pg');
require('dotenv').config();

const pool = new Pool({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  port: process.env.DB_PORT,
});

// Mengecek koneksi ke database
pool.connect((err, client, release) => {
  if (err) {
    console.error('❌ Gagal terhubung ke database:', err.stack);
  } else {
    console.log('✅ Berhasil terhubung ke database');
    release(); // Mengembalikan client ke pool
  }
});

module.exports = pool;
