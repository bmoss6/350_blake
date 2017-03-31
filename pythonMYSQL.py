#!/usr/bin/python
import MySQLdb

db = MySQLdb.connect(host="localhost",    # your host, usually localhost
                     user="root",         # your username
                     passwd="Taggerung123",  # your password
                     db="ittfsec")        # name of the data base


cur = db.cursor()


tableList = [
    'CREATE TABLE customer (customer_name VARCHAR(20));',
    'CREATE TABLE security_analyst (sec_id VARCHAR(5), sec_name VARCHAR(20));',
    'CREATE TABLE vulnerability (cve VARCHAR(13), platform VARCHAR(20), discover_date DATE);',
    'CREATE TABLE exploit (exploit_name VARCHAR(20), behavior VARCHAR(100));',
    'CREATE TABLE hacker (hacker_id VARCHAR(5), alias VARCHAR(20));',
    'CREATE TABLE agreement (effective_date DATE, signer VARCHAR(20), scope VARCHAR(20));',
    'CREATE TABLE report (engagement VARCHAR(20), vulnerability VARCHAR(13), action VARCHAR(50));',
    'CREATE TABLE attack (type VARCHAR(20));',
    'CREATE TABLE network (cidr VARCHAR(15), type VARCHAR(20));',
    'CREATE TABLE subnet (subnet_cidr VARCHAR(3));',
    'CREATE TABLE system (mac VARCHAR(53), function VARCHAR(20), system_architecture VARCHAR(5));',
    'CREATE TABLE application (app_type VARCHAR(20), app_name VARCHAR(20), app_version VARCHAR(20));',
    'CREATE TABLE domain (domain_name VARCHAR(20));',
    'CREATE TABLE user (username VARCHAR(20), user_group VARCHAR(20), privilege VARCHAR(20), password VARCHAR(40));',
    'CREATE TABLE operating_system (os_type VARCHAR(15), os_name VARCHAR(15), os_version VARCHAR(20), os_architecture VARCHAR(20));',
    'CREATE TABLE kernel (kernel_type VARCHAR(15), kernel_name VARCHAR(20), kernel_version VARCHAR(20));',
    'CREATE TABLE mitm (session VARCHAR(20), client VARCHAR(20), server VARCHAR(20));',
    'CREATE TABLE sql_injection (statement VARCHAR(20));',
    'CREATE TABLE privilege_escalation (escalation VARCHAR(20));',
    'CREATE TABLE buffer_overflow (mem_space VARCHAR(20));'
    ]
for query in tableList:
    cur.execute(query)

companyData = [("Meherg Inc."),("Moss Industries"),("Fletcher Enterprise"),("Farnbach LLC")]

cur.execute("INSERT INTO customer (customer_name) VALUES ('Meherg Inc.'),('Moss Industries'),('Fletcher Enterprise'),('Farnbach LLC');")


secData = [
    ("00001","Kyle"),
    ("01234","Cameron"),
    ("98765","Hans"),
    ("96325","Blake")
    ]

cur.executemany("INSERT INTO security_analyst (sec_id,sec_name) VALUES (%s,%s);", secData)

vulnData = [
    ("CVE-2015-0089","Windows","2015-12-05"),
    ("CVE-2017-0399","Windows","2017-10-15"),
    ("CVE-2016-0202","Windows","2016-2-25")
    ]
cur.executemany("INSERT INTO vulnerability (cve,platform,discover_date) VALUES (%s,%s,%s)", vulnData)


exploitData = [
    ("Heartbleed","Vulnerability in the popular OpenSSL cryptographic software library"),
    ("Shellshock","Security bugs in the Unix Bash shell")
    ]
cur.executemany("INSERT INTO exploit (exploit_name,behavior) VALUES (%s,%s)", exploitData)

hackerData = [
    ("31337","31337"),
    ("65489","Mr. Robot")
    ]
cur.executemany("INSERT INTO hacker (hacker_id,alias) VALUES (%s,%s)", hackerData)

agreementData = [
    ("2016-12-05","Fletcher Enterprise", "123.236.123.255"),
    ("2017-1-15","Moss Industries", "143.236.123.0"),
    ("2016-3-25","Farnbach LLC", "23.96.23.255"),
    ("2016-8-17","Meherg Inc.", "230.6.13.255")
    ]
cur.executemany("INSERT INTO agreement (effective_date,signer,scope) VALUES (%s,%s,%s)", agreementData)

reportData = [
    ("2016-12-05","CVE-2015-0089", "Change all passwords"),
    ("2017-1-15","CVE-2017-0399", "Upgrade to supported version")
    ]
cur.executemany("INSERT INTO report (engagement,vulnerability,action) VALUES (%s,%s,%s)", reportData)

attackData = '("MITM"),("Buffer Overflow")'
cur.execute("INSERT INTO attack (type) VALUES ('MITM'),('Buffer Overflow');")

networkData = [
    ("123.236.123.255","Enterprise"),
    ("23.96.23.255","Personal")
    ]
cur.executemany("INSERT INTO network (cidr,type) VALUES (%s,%s);", networkData)

subnetData = '("/24"),("/30"),("/32")'
cur.execute("INSERT INTO subnet (subnet_cidr) VALUES ('/24'),('/30'),('/32');")

systemData = [
    ("00:0a:95:9d:68:16","ethernet", "x86"),
    ("00:0a:99:dE:08:25","wifi", "x86")
    ]
cur.executemany("INSERT INTO system (mac,function,system_architecture) VALUES (%s,%s,%s);", systemData)

applicationData = [
    ("Web App","FantasticApp","12.0983.324"),
    ("Windows App","GreatApp","0.0293.28384")
    ]
cur.executemany("INSERT INTO application (app_type,app_name,app_version) VALUES (%s,%s,%s);", applicationData)

domainData = '("moss.com"),("meherg.net")'
cur.execute("INSERT INTO domain (domain_name) VALUES ('moss.com'),('meherg.net');")

userData = [
    ("Kaylee","Basic user","User","thisisapassword"),
    ("CJ","Admin","Root","thisisamuchmorcomplicatedpassword")
    ]
cur.executemany("INSERT INTO user (username,user_group,privilege,password) VALUES (%s,%s,%s,%s);", userData)

operating_systemData = [
    ("DOS","Windows 10", "10.2304.503", "x86"),
    ("MAC","OSX", "304.304", "x86"),
    ("LINUX","Ubuntu", "16.04", "x86")
    ]
cur.executemany("INSERT INTO operating_system (os_type,os_name,os_version,os_architecture) VALUES (%s,%s,%s,%s);", operating_systemData)

kernelData = [
    ("Monolithic","Unix", "6.4"),
    ("Microkernel","Mac OS", "8.9")
    ]
cur.executemany("INSERT INTO kernel (kernel_type,kernel_name,kernel_version) VALUES (%s,%s,%s);", kernelData)

mitmData = [
    ("123454gfd","Firefox", "byu.edu"),
    ("pphsessid29309432","Chrome", "espn.com")
    ]
cur.executemany("INSERT INTO mitm (session,client,server) VALUES (%s,%s,%s);", mitmData)

#sql_injectionData = '(" OR \'1\'=\'1\'"),("SELECT * FROM users WHERE name = ")'
#cur.execute("INSERT INTO sql_injection (statement) VALUES (' OR \'1\'=\'1\''),('SELECT * FROM users WHERE name = ');")

privilege_escalationData = '("Dirty Cow")'
cur.execute("INSERT INTO privilege_escalation (escalation) VALUES ('Dirty Cow');")

buffer_overflowData = '("0x889304"),("0xFFF000"),("0x237485")'
cur.execute("INSERT INTO buffer_overflow (mem_space) VALUES ('0x889304'),('0xFFF000'),('0x237485');")

db.commit()
db.close()
