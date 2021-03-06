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

			if(rows){
        console.log(rows[0].username);
        resolve(rows[0].username);
      }
			else
				reject('Password or Username are incorrect');
		});
	});
};




getInfo.addReport = function(agreement, cve,action, id){
	return new Promise(function(resolve,reject){
    console.log("HERE IS AGREEMENT ID");
    console.log(agreement);
		connection.query(queries.addReport,[agreement,cve,action, id], function(err,rows,fields){
			if(err) reject(err);
			resolve();
		});
	});
};






getInfo.loginEmployee = function(username,password){
  console.log("IN THE LOGIN EMPLOYEE");
  return new Promise(function(resolve,reject){
		connection.query(queries.loginEmployee, [username,password], function(err, rows, fields){
			if(err)
      {
        console.log(err);
        reject(err);
      }

			if(rows){

        console.log(rows[0].username);
        resolve(rows[0].username);
      }
			else
				reject('Password or Username are incorrect');
		});
	});
};


getInfo.getCustomers = function(){
	return new Promise(function(resolve,reject){
		connection.query(queries.getCustomers,function(err, rows, fields){
			if(err)
      {

        reject(err);}
			resolve(rows);
		});
	});
};


getInfo.newEmployee = function(name,username,password){
	return new Promise(function(resolve,reject){
		connection.query(queries.newEmployee, [name,username,password] ,function(err, rows, fields){
			if(err)
      {
        console.log("got to this part in newemployee error");
        console.log(err);
        reject(err);
      }
      console.log("GET HERE ON NEW EMp");
      console.log(rows)
			resolve(rows);
		});
	});
};


getInfo.removeReports = function(id){
	return new Promise(function(resolve,reject){
		connection.query(queries.removeReports, [id] ,function(err, rows, fields){
			if(err)
      {
        console.log("got to this part in newemployee error");
        console.log(err);
        reject(err);
      }
      console.log("GET HERE ON NEW EMp");
      console.log(rows)
			resolve(rows);
		});
	});
};

getInfo.removeAgreement = function(id){
	return new Promise(function(resolve,reject){
		connection.query(queries.removeAgreement, [id] ,function(err, rows, fields){
			if(err)
      {
        console.log("got to this part in newemployee error");
        console.log(err);
        reject(err);
      }
      console.log("GET HERE ON NEW EMp");
      console.log(rows)
			resolve(rows);
		});
	});
};



getInfo.getAgreementsByName = function(name){
	return new Promise(function(resolve, reject){
		connection.query(queries.getAgreementsByName, [name], function(err, rows, fields){
      console.log("In the agreements" + name);
      console.log(queries.getAgreementsByName);
			if(err)
      {
        console.log(err);
        reject(err);
      }
      console.log("Here are the rows");
      console.log(rows);
			resolve(rows);
		});
	});
};


getInfo.addAgreement = function(id,date,signer,scope){
	return new Promise(function(resolve,reject){
		connection.query(queries.addAgreement, [id,date,signer,scope], function(err){
			if(err) reject(err);
			resolve();
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

getInfo.getAnalystByUser = function(id){
	return new Promise(function(resolve,reject){
		connection.query(queries.getAnalystByUser,[id],function(err,rows,fields){
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
  console.log("In the reports by engage" +id);
	return new Promise(function(resolve,reject){
		connection.query(queries.getReportbyEngage,[id],function(err,rows,fields){
			if(err)
      {
        console.log("ERROR IN THE GET REPORT BY ENGAGE!!!!!!!");
        reject(err);
      }
      console.log("Here should be the answers!" + rows);
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

getInfo.getAgreementInfo = function(agreement_id){
  console.log("In agreement info part!")
	return new Promise(function(resolve,reject){
		connection.query(queries.getAgreementInfo, [agreement_id], function(err, rows, fields){
			if(err) reject(err);
			resolve(rows);
		});
	});
};


getInfo.updateStatus = function(agreement_id, cve, status){
  console.log("In Update part!")
	return new Promise(function(resolve,reject){
		connection.query(queries.updateStatus, [status,agreement_id,cve], function(err, rows, fields){
			if(err) reject(err);
			resolve(rows);
		});
	});
};



getInfo.getName = function(username){
	return new Promise(function(resolve,reject){
		connection.query(queries.getName,[username],function(err,rows,fields){
			if(err) reject(err);
      console.log("From GETNAMES");
      console.log(rows[0].customer_name);
			resolve(rows);
		});
	});
};

exports.getInfo = getInfo;
