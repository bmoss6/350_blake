'use strict';
var db = require('../db');
var getInfoFile = require('../models/getInfo'), getInfo = getInfoFile.getInfo;
var Promise = require('bluebird');

exports.setup = function(server){
	//for the /mongo route
	server.get('/mongo', function(req, res){
		// get info from model
		getInfo.getHackerById(65489)
		.then(function(rows){
			res.render('test', {emp:rows});
		})
		.catch(function(err){
			console.log(err);
		});
		
		
	});
};

