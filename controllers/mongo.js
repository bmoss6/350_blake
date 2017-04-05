'use strict';
var db = require('../db');
var getInfoFile = require('../models/getInfo'), getInfo = getInfoFile.getInfo;

var Promise = require('bluebird');
console.log("Getting here!");
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
		res.render('index');
	});
	//display a customers home page with agreements, takes the username in the url
	server.get('/customerHome/:name', function(req, res){
		console.log(req.params.name);
		getInfo.getName(req.params.name)
		.then(function(customer_name){
			console.log("HERE IS THE CUSTOMERS NAME FROM USERNAME");
			console.log( customer_name[0].customer_name);
			getInfo.getAgreementsByName(customer_name[0].customer_name)
			.then(function(agreements){
				res.render('customerHome', {agreements:agreements});
			})
			.catch(function(err){
				console.log(err);
			});


		})
		.catch(function(err){
			console.log(err);
		});


	});


	server.get('/empCustomer/:emp_id/:name', function(req, res){
		console.log(req.params.name);
		getInfo.getName(req.params.name)
		.then(function(customer_name){
			console.log("HERE IS THE CUSTOMERS NAME FROM USERNAME");
			console.log( customer_name[0].customer_name);
			getInfo.getAgreementsByName(customer_name[0].customer_name)
			.then(function(agreements){
				res.render('empcustomer', {agreements:agreements});
			})
			.catch(function(err){
				console.log(err);
			});


		})
		.catch(function(err){
			console.log(err);
		});


	});






	server.get('/agreements/:agree_id', function(req, res){
		console.log(req.params.agree_id);
		getInfo.getAgreementInfo(req.params.agree_id)
		.then(function(agreement){
			console.log(agreement);
		getInfo.getReportByEngage(req.params.agree_id)
		.then(function(engagementinfo){
			console.log("Here is the engagement info" + engagementinfo);
			res.render('agreement', {agreement:agreement, engagementinfo: engagementinfo});

		})
		.catch(function(err){
			console.log(err);
		});

		})


	});



	server.get('/employee/:emp_user', function(req, res){



getInfo.getAnalystByUser(req.params.emp_user)
.then(function(user){

getInfo.getCustomers()
.then(function(customers){


res.render('employee', {user:user,customers:customers});

})
.catch(function(err){
	console.log(err);
});



})
.catch(function(err){
	console.log(err);
});


	});




	server.get('/update/:cve/:agree_id/:status', function(req, res){
		console.log(req.params.agree_id);
		getInfo.updateStatus(req.params.agree_id, req.params.cve, req.params.status)
		.then(function(done){
			res.redirect('/agreementS/' +req.params.agree_id);
		})
		.catch(function(err){

			console.log(err)
		}
	);




	});





	// the route for logging in a user
	//takes a posted username and password
	//if there is a problem logging in, it redirects to the login page
	server.post('/loginCustomer', function(req,res){
		console.log(req.body);
		getInfo.loginCustomer(req.body.username, req.body.password)
		.then(function(username){
			console.log("Correct username and password!");
			console.log(username);
			res.redirect('/customerHome/' + username);
		})
		.catch(function(err){
			if(err === 'Password or Username are incorrect')
				res.redirect('/loginFailed');
		});
	});


	server.post('/loginEmployee', function(req,res){
		console.log(req.body);
		getInfo.loginEmployee(req.body.username, req.body.password)
		.then(function(username){
			console.log("Correct username and password!");
			console.log(username);
			res.redirect('/employee/' + username);
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
console.log("Getting here2!");
