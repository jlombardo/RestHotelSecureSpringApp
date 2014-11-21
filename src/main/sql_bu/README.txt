IMPORTANT SETUP INFORMATION:
===========================

To use this sample program you need to first restore the "hotels"
database (MySql) using the enclosed backup .sql file.

Once you do that you will have 3 test user accounts to play with. You can
create your own later.

The test accounts are:

    Username: bob@isp.com
    Password: password1
    Role:     ROLE_ADMIN

    Username: sally@isp.com
    Password: password2
    Role:     ROLE_USER

    Username: tom@isp.com
    Password: passord3
    Role:     ROLE_USER

If you want to create your own users and roles, you may do so directly in
MySql through the administrator console. However, you will need to do 3
things to make these new accounts work:

1. Use the included ShaHashGeneratorApp.java program to create encrypted
hash values for your passwords. Then store only the hash value for the
user password.

2. Make sure you create at least one role in the "authorities" table for
each user account.

3. Modify the "Other Sources/src/main/resources/<default package>/applicationContext.xml
file and add or modify the intercept-url values to suite your needs.

TIP: when stopping, then starting Glassfish, first do a "CLEAN", followed by
a "CLEAN and BUILD" before running the app again.
    