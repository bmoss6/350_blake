'use strict';
var db = require('../db');


exports.setup = function(server){
	//for the /mongo route
	server.get('/mongo', function(req, res){
		// get info from model
		
		res.render('test');
		
	});
};

