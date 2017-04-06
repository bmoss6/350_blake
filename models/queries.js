'use strict';

var queries = {};

queries.getAgreements = 'SELECT * FROM agreement';
// ? the name for the signer's agreements we want
queries.getAgreementsByName = 'SELECT * FROM agreement WHERE signer = ?';

queries.getSystems = 'SELECT * FROM system';
//? is the mac of the desired system
queries.GetSystemByMac = 'Select * From system WHERE MAC = ?';
//the first ? is the username the second is the password
queries.loginCustomer = 'SELECT * FROM customer WHERE username = ? AND password = ?';

queries.loginEmployee = 'SELECT * FROM security_analyst WHERE username = ? AND password = ?';

queries.newEmployee = 'INSERT INTO security_analyst (sec_name, password, username, sec_id) VALUES (?,?,?, NULL)';

queries.addAgreement = 'INSERT INTO agreement (effective_date,signer,scope) VALUES (?,?,?)';

queries.addReport = 'INSERT INTO report (agreement_id,vulnerability,action, status, report_id) VALUES (?,?,?,"Open", ?)';

queries.removeAgreement = 'DELETE from agreement WHERE agreement_id = ?';

queries.removeReports = 'DELETE from report WHERE agreement_id = ?';

queries.getApplications = 'SELECT * FROM application';

queries.getAgreementInfo = 'SELECT * FROM agreement WHERE agreement_id = ?';

queries.getExploits = 'SELECT * FROM exploit';

queries.getCustomers = 'SELECT * FROM customer';

queries.getMitm = 'SELECT * FROM mitm';

queries.getDomains = 'SELECT * FROM domain';

queries.getAnalystByUser = 'SELECT * FROM security_analyst WHERE username = ?';

queries.getAnalysts = 'SELECT * FROM security_analyst';

queries.getReports = 'SELECT * FROM report';

queries.getReportbyEngage = 'SELECT * FROM report WHERE agreement_id = ?';

queries.getHackerById = 'SELECT * FROM hacker WHERE hacker_id= ?';

queries.getAttacks = 'SELECT * FROM attack';

queries.getName = 'SELECT customer_name FROM customer WHERE username = ?';

queries.updateStatus = 'UPDATE report SET status = ? WHERE agreement_id = ? and vulnerability = ?'

queries.addSamplereport = 'INSERT INTO '
exports.queries = queries;
