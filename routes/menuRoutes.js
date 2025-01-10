const express = require('express');
const router = express.Router();
const menuController = require('../controllers/menuController');
 
router.get('/', menuController.getMenu);

router.get('/image/:filename', menuController.getMenuImage);
 
router.get('/top-orders', menuController.getTopMenusByOrders);
 
router.get('/top-release', menuController.getTopMenusByReleaseDate);

module.exports = router;
