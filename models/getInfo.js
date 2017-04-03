'use strict';

var db = require('../db'), 
    mysql = db.mysql, 
    connection = db.connection;
var sqlFile= require('./queries'), queries = sqlFile.queries;

var Promise = require('bluebird');
var getInfo = {};
// the promises for getting information needed for a page

getInfo.loginCustomer = function(username,password){
	return new Promise(function(resolve,reject){
		connection.query(queries.loginCustomer, [username,password], function(err, rows, fields){
			if(err) reject(err);
			if(rows.size() !== 0)
				resolve(rows);
			else
				reject('Password or Username are incorrect');
		});
	});
};
getInfo.getCustomers = function(){
	return new Promise(function(resolve,reject){
		connection.query(queries.getCustomers,function(err, rows, fields){
			if(err) reject(err);
			resolve(rows);
		});
	});
};

getInfo.getAgreementsByName = function(name){
	return new Promise(function(resolve, reject){
		connection.query(queries.getAgreementsByName, [name], function(err, rows, fields){
			if(err) reject(err);
			resolve(rows);
		});
	});
};

getInfo.getHackerById = function(id){
	return new Promise(function(resolve,reject){
		connection.query(queries.getHackerById,[id],function(err,rows,fields){
			if(err) reject(err);
			resolve(rows);
		});
	});
};

getInfo.getAnalystById = function(id){
	return new Promise(function(resolve,reject){
		connection.query(queries.getAnalystById,[id],function(err,rows,fields){
			if(err) reject(err);
			resolve(rows);
		});
	});
};

getInfo.getAnalysts = function(){
	return new Promise(function(resolve,reject){
		connection.query(queries.getAnalysts,function(err, rows, fields){
			if(err) reject(err);
			resolve(rows);
		});
	});
};

getInfo.getReportByEngage = function(id){
	return new Promise(function(resolve,reject){
		connection.query(queries.getRebortByEngage,[id],function(err,rows,fields){
			if(err) reject(err);
			resolve(rows);
		});
	});
};

getInfo.getSystemByMac = function(id){
	return new Promise(function(resolve,reject){
		connection.query(queries.getSystemByMac,[id],function(err,rows,fields){
			if(err) reject(err);
			resolve(rows);
		});
	});
};

getInfo.getExploits = function(){
	return new Promise(function(resolve,reject){
		connection.query(queries.getExploits,function(err, rows, fields){
			if(err) reject(err);
			resolve(rows);
		});
	});
};

getInfo.getMitm = function(){
	return new Promise(function(resolve,reject){
		connection.query(queries.getMitm,function(err, rows, fields){
			if(err) reject(err);
			resolve(rows);
		});
	});
};

getInfo.getAttacks = function(){
	return new Promise(function(resolve,reject){
		connection.query(queries.getAttacks,function(err, rows, fields){
			if(err) reject(err);
			resolve(rows);
		});
	});
};

getInfo.getApplications = function(){
	return new Promise(function(resolve,reject){
		connection.query(queries.getApplications,function(err, rows, fields){
			if(err) reject(err);
			resolve(rows);
		});
	});
};

exports.getInfo = getInfo;