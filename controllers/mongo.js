'use strict';
var db = require('../db');
var getInfoFile = require('../models/getInfo'), getInfo = getInfoFile.getInfo;
var Promise = require('bluebird');

exports.setup = function(server){
	//for the /mongo test route
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
	// the home sight for our website
	server.get('/', function(req,res){
		res.render('home');
	});	
	//display a customers home page with agreements, takes the username in the url
	server.get('/customerHome/:name', function(req, res){
		getInfo.getAgreementsByName(req.body.name)
		.then(function(agreements){
			res.render('customerHome', {agreements:agreements});
		})
		.catch(function(err){
			console.log(err);
		});
	});
	// the route for logging in a user
	//takes a posted username and password
	//if there is a problem logging in, it redirects to the login page
	server.post('/loginCustomer', function(req,res){
		getInfo.loginCustomer(req.body.username, req.body.password)
		.then(function(username){
			res.redirect('/customerHome/' + username);
		})
		.catch(function(err){
			if(err === 'Password or Username are incorrect')
				res.redirect('/loginFailed');
		});
	});
	// the login failed route, used to notify the user something went wrong
	server.get('/loginFailed', function(req,res){
		res.render('loginFailed');
	});
};

