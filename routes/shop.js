var express = require('express');
var router = express.Router();

var shopController = require('../controllers/shop-controller');

const bodyParser = require('body-parser');


router.use(bodyParser.urlencoded({ extended: true }));

router.get('/shop', shopController.showProducts);
router.get('/shop/product', shopController.showProduct);
router.get('/shop/interior', shopController.showInterior);

module.exports = router;
