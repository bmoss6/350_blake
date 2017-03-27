'use strict';
var db = require('../db');
var employeesModel = require('../models/test');
var employees = employeesModel.employees;


exports.setup = function(server){
	//for the /mongo route
	server.get('/mongo', function(req, res){
		// get info from model
		employees.find({},function(err,emp){
			if (err) throw err;
			//render the page with that info
			res.render('test',{emp:emp});
		});
		
	});
}

