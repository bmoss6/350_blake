'use strict';
var mysql = require('mysql');
// these values need to be changed to whatever we designate as the default user
var connection = mysql.createConnection({
  host     : '192.168.23.128',
  user     : 'root',
  password : 'itrocks!',
  database : 'ittfsec'
});

connection.connect();

exports.mysql = mysql;
exports.connection = connection;
