const pool = require('../config/db');
const path = require('path'); 
const fs = require('fs');
 
const getMenu = async (req, res) => {
    try {
        const result = await pool.query('SELECT * FROM menu');
        res.status(200).json(result.rows);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
};
 
const getTopMenusByOrders = async (req, res) => {
    try {
        const result = await pool.query(`
      SELECT * 
      FROM menu 
      ORDER BY total_order DESC 
      LIMIT 5
    `);
        res.status(200).json(result.rows);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
};
 
const getTopMenusByReleaseDate = async (req, res) => {
    try {
        const result = await pool.query(`
      SELECT * 
      FROM menu 
      ORDER BY release_date DESC 
      LIMIT 5
    `);
        res.status(200).json(result.rows);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
};

const getMenuImage = (req, res) => {
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
    getMenu,
    getTopMenusByOrders,
    getTopMenusByReleaseDate,
    getMenuImage,
};
