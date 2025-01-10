const express = require('express');
const blogController = require('../controllers/blogController');

const router = express.Router();

// Route untuk mendapatkan semua blog
router.get('', blogController.getBlog);

// Route untuk mendapatkan top 5 blog berdasarkan tanggal rilis terbaru
router.get('/top-release', blogController.getTopBlogsByReleaseDate);

// Route untuk mendapatkan gambar blog
router.get('/image/:filename', blogController.getBlogImage);

module.exports = router;
