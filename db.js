'use strict';
// import mongo
var mongoose = require('mongoose');
// get our connection to the database
var db= mongoose.connect('mongodb://localhost/test');

exports.db = db;
exports.mongoose = mongoose;