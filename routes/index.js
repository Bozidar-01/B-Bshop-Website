var express = require('express');
var router = express.Router();


var shopController = require('../controllers/shop-controller');



/* GET home page. */
router.get('/', shopController.index);

router.get('/shop', shopController.showProducts);
router.get('/contact', shopController.contact);
router.post('/contact', shopController.validateContact);
router.get('/about', shopController.about);
// router.get('/shop/product/:id', shopController.showProduct);

router.get('/shop/:id', shopController.showProduct);
router.get('/interior', shopController.showInterior);
router.get('/exterior', shopController.showExterior);

module.exports = router;
