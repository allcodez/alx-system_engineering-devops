# Postmortem Report

## 504 Error while Accessing a Given URL

![Error](https://raw.githubusercontent.com/MitaliSengupta/holberton-system_engineering-devops/master/0x19-postmortem/image.gif)

### Incident Report: [504 Error / Site Outage](https://github.com/MitaliSengupta/holberton-system_engineering-devops/tree/master/0x17-web_stack_debugging_3)

#### Summary

On September 11th, 2018, at midnight, the server experienced an outage resulting in a 504 error for users attempting to access the website. The server is based on a LAMP stack.

#### Timeline

- **00:00 PST** - Users encounter 500 error when accessing the website.
- **00:05 PST** - Verification of Apache and MySQL status.
- **00:10 PST** - Website fails to load correctly; server and database are functioning properly.
- **00:12 PST** - Apache server restarted; website accessible with curl showing status 200.
- **00:18 PST** - Examination of error logs to identify the source of the error.
- **00:25 PST** - Investigation reveals premature shutdown of Apache in /var/log; PHP error logs missing.
- **00:30 PST** - Review of php.ini settings; error logging enabled.
- **00:32 PST** - Apache server restarted; php error logs checked.
- **00:36 PST** - Discovery of a typo in file name causing incorrect loading and premature closure of Apache.
- **00:38 PST** - Typo corrected; Apache server restarted.
- **00:40 PST** - Server resumes normal operation; website loads correctly.

#### Root Cause and Resolution

The issue stemmed from a misspelled file name referenced in wp-settings.php, leading to a 500 error upon attempting to curl the server. Investigation revealed disabled error logging for PHP, hindering error identification. Enabling error logging and restarting Apache uncovered the misspelled file extension (.phpp) in wp-settings.php, causing the access error. The resolution involved correcting the typo and restarting Apache. To prevent future occurrences, all servers and sites should have error logging enabled and undergo local testing before deployment on multi-server setups.

#### Corrective and Preventive Measures

- Enable error logging for all servers and sites to facilitate error identification.
- Conduct local testing for all servers and sites before deployment on multi-server setups to address errors proactively.
