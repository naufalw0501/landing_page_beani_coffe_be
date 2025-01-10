const pool = require('../config/db');
const path = require('path'); 
const fs = require('fs');
 
const getBlog = async (req, res) => {
    try {
        const result = await pool.query('SELECT * FROM blog');
        res.status(200).json(result.rows);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
};
 
const getTopBlogsByReleaseDate = async (req, res) => {
    try {
        const result = await pool.query(`
            SELECT * 
            FROM blog 
            ORDER BY release_date DESC 
            LIMIT 3
        `);
        res.status(200).json(result.rows);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
};
 
const getBlogImage = (req, res) => {
    const { filename } = req.params;

    const imagePath = path.join(__dirname, '..', 'images', filename);
    fs.exists(imagePath, (exists) => {
        if (!exists) {
            return res.status(404).json({ error: 'Image not found' });
        }
        res.sendFile(imagePath);
    });
};

module.exports = {
    getBlog,
    getTopBlogsByReleaseDate,
    getBlogImage,
};
