var express = require('express');
var router = express.Router();

var shopController = require('../controllers/shop-controller');

const bodyParser = require('body-parser');


router.use(bodyParser.urlencoded({ extended: true }));



module.exports = router;
