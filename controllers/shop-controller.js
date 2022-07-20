var express = require('express');
var router = express.Router();

var mysqlConfig = require('../connections/mysql');
var connection = mysqlConfig.connection;

var shopService = require('../services/shop-service');


exports.index = async function (req, res, next) {

    try {

        res.render('index', {
            title: 'B&Bshop',
            currentPage: 'home'

        });

    }
    catch (e) {
        console.log(e);
    }
};



exports.showProducts = async function (req, res, next) {

    try {


        let products = await shopService.getAllProducts();

        res.render('shop', {
            title: 'B&Bshop',
            currentPage: 'shop',
            products

        });



    }
    catch (e) {
        console.log(e);
    }
};

exports.showInterior = async function (req, res, next) {

    try {

        // let id = Number((req.params.id).replace(/[^\d].*/, ''));

        let interiorProducts = await shopService.getInteriorProducts();

        res.render('interior', {
            title: 'Interior Products',
            currentPage: 'interior',
            interiorProducts
        });


    }
    catch (e) {
        console.log(e);
    }
};

exports.showExterior = async function (req, res, next) {

    try {

        // let id = Number((req.params.id).replace(/[^\d].*/, ''));

        let exteriorProducts = await shopService.getExteriorProducts();

        res.render('exterior', {
            title: 'Exterior Products',
            currentPage: 'exterior',
            exteriorProducts
        });


    }
    catch (e) {
        console.log(e);
    }
};

exports.showProduct = async function (req, res, next) {

    try {


        let products = await shopService.getAllProducts();

        res.render('shop/product', {
            title: 'B&Bshop',
            currentPage: 'product',
            products

        });



    }
    catch (e) {
        console.log(e);
    }
};

exports.about = async function (req, res, next) {

    try {

        res.render('about', {
            title: 'B&Bshop',
            currentPage: 'aboutUs'

        });

    }
    catch (e) {
        console.log(e);
    }
};


exports.contact = function (req, res, next) {

    res.render('contact', {
        title: 'Contact Us',
        currentPage: 'contact',
        formData: {}

    });
};

exports.validateContact = function (req, res, next) {

    let formData = validateAndCreateContactFormData(req.body);

    !formData.valid ? res.status(403) : formData = {};

    res.render('contact', {
        title: 'Contact Us',
        currentPage: 'contact',
        formData
    });


};

exports.newProduct = async function (req, res, next) {

    try {

        let formData = {};



        res.render('personal', {
            title: 'Form for Adding a New product',
            currentPage: 'add-car',
            formData
        });


    }
    catch (e) {
        console.log(e);
    }
};


function validateAndCreateProductsFormData(body) {

    let name = body.name;
    let price = body.price;
    let sale = body.sale;
    let product_img = body.product_img;
    let category_id = body.category_id;

    let formData = {
        valid: true,
        name: {
            value: name
        },
        price: {
            value: price
        },
        sale: {
            value: sale
        },
        product_img: {
            value: product_img
        },
        category_id: {
            value: category_id
        }
    };


    if (!name || name.length < 2) {
        formData.name = {
            valid: false,
            errorMsg: 'Enter a valid name'
        }

        formData.valid = false;
    }

    if (!price || price.length < 2) {
        formData.price = {
            valid: false,
            errorMsg: 'Enter a valid price'
        }

        formData.valid = false;
    }

    if (!sale || sale.length < 2) {
        formData.sale = {
            valid: false,
            errorMsg: 'Enter a valid sale price'
        }

        formData.valid = false;
    }

    if (!product_img || product_img.length < 2) {
        formData.product_img = {
            valid: false,
            errorMsg: 'Enter a valid product_img URL'
        }

        formData.valid = false;
    }

    if (!category_id || category_id.length < 2) {
        formData.category_id = {
            valid: false,
            errorMsg: 'Enter a valid category_id'
        }

        formData.valid = false;
    }



    return formData;
}
function validateAndCreateContactFormData(body) {

    let name = body.name;
    let email = body.email;
    let question = body.question;

    let formData = {
        valid: true,
        email: {
            value: email
        },
        name: {
            value: name
        },
        question: {
            value: question
        }
    };

    let pattern = /^\b[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b$/i;

    if (!pattern.test(email)) {
        formData.email = {
            valid: false,
            errorMsg: 'Enter a valid email'
        };

        formData.valid = false;
    }

    if (!name || name.length < 2) {
        formData.name = {
            valid: false,
            errorMsg: 'Enter a valid name'
        }

        formData.valid = false;
    }

    if (!question || question.length < 10) {
        formData.question = {
            valid: false,
            errorMsg: 'Enter a valid Question'
        }


        formData.valid = false;
    }

    return formData;
}

