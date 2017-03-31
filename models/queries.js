'use strict';

var queries = {};

queries.getAgreements = 'SELECT * FROM agreement';

queries.getSystems = 'SELECT * FROM system';
//? is the mac of the desired system
queries.GetSystemByMAc = 'Select * From system WHERE MAC = ?';
//the first ? is the username the second is the password
queries.login = 'SELECT * FROM user WHERE Username = ? AND Password = ?';

queries.getApplications = 'SELECT * FROM application';

queries.getExploits = 'SELECT * FROM exploit';

queries.getCustomers = 'SELECT * FROM customer';

queries.getMitm = 'SELECT * FROM mitm';

queries.getDomains = 'SELECT * FROM domain';

queries.getAnalyst = 'SELECT * FROM security_analyst WHERE sec_id = ?';

queries.getReports = 'SELECT * FROM report';

queries.getReportbyEngage = 'SELECT * FROM report WHERE engagement = ?';

queries.getHackerById = 'SELECT * FROM hacker WHERE hacker_id= ?';

queries.getAttacks = 'SELECT * FROM attack';

exports.queries = queries;