const pool = require('../config/db');

const getTestimoni = async (req, res) => {
  try {
    const result = await pool.query('SELECT * FROM testimoni');
    res.status(200).json(result.rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

module.exports = {
  getTestimoni,
};
