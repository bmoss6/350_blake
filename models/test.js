'use strict';
var connection = require('../db.js'),
     db = connection.db,
     mongoose = connection.mongoose;
var Schema = mongoose.Schema;

var testSchema = new Schema({
	name: String,
	birthdate: Date,
	hiredate: Date,
	workdays: Array,
	college_major: String,
	employeeRank: Number,

});

var employees = mongoose.model('employees',testSchema);

exports.employees = employees;