'use strict';
var mysql = require('mysql');
// these values need to be changed to whatever we designate as the default user
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'Taggerung123',
  database : 'ittfsec'
});
 
connection.connect();

exports.mysql = mysql;
exports.connection = connection;