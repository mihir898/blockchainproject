var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Malahide Players Tracking', name:null });
});

router.post('/', function(req, res, next) {
  res.render('index', { title: 'Malahide Players Tracking', name:req.body.name });
});

router.get('/news', function(req, res, next) {
  res.render('news', { title: 'News', name:null });
});

router.get('/pitchinspection', function(req, res, next) {
  res.render('pitchinspection', { title: 'Pitch', name:null });
});

module.exports = router;
