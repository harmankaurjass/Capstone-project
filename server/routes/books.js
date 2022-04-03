const express = require('express');
const router = require('express-promise-router')();
const booksController = require('../controllers/books');



router.route('/getBooks')
    .get(booksController.getBooks);

router.route('/getBookInfo')
    .get(booksController.getBookInfo);

router.route('/searchbooks')
    .get(booksController.searchBooks);

router.route('/getcategories')
    .get(booksController.getBookCategories);

router.route('/getNewArrivals')
    .get(booksController.getNewArrivals);

router.route('/getBestSeller')
    .get(booksController.getBestSeller);

module.exports = router;
