'use strict';

var db = require('../db'), 
    mysql = db.mysql, 
    connection = db.connection;
var sqlFile= require('./queries'), queries = sqlFile.queries;

var Promise = require('bluebird');
var getInfo = {};
// the promises for getting information needed for a page

getInfo.getCustomers = function(){
	return  new Promise(function(resolve,reject){
		connection.query(queries.getCustomers,function(err, rows, fields){
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

exports.getInfo = getInfo;