const express = require('express');
const { getTestimoni } = require('../controllers/testimoniController');

const router = express.Router();

router.get('/', getTestimoni);

module.exports = router;
