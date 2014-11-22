About the RestHotelSpringSecurityApp
------------------------------------
This app is a simple demonstration of using JAX-RS 2 RESTful web services secured by
Spring Security (v3.2.5 as of this writing). Although it is a Maven project, it has 
a connection pool deployment file (glassfish-resources.xml) designed for Glassfish 4.1 server. 
This file can be found under "Other Sources/src/main/resources/setup" and controls access 
to the database and provides a JNDI address that matches the one in persistence.xml (see JPA below).

The data model is based on JPA 2 and the REST services are written as Stateless EJBs, 
with the persistence context injected via CDI. The database is MySql and the schema is "hotels". 
This schema can be restored by using the included backup files under "Other Sources/src/main/resources/sql_bu_". 

There are 3 sample user accounts:


    Username: bob@isp.com
    Password: password1
    Role:     ROLE_ADMIN

    Username: sally@isp.com
    Password: password2
    Role:     ROLE_USER

    Username: tom@isp.com
    Password: passord3
    Role:     ROLE_USER

Using these accounts the app is currently configured to allow anyone, even unauthenticated users, to access the hotel list (findAll). 
Users with ROLE_ADMIN and users with ROLE_USER may add new hotel records, while only users with ROLE_ADMIN may update or 
delete records. This is easily changed by modifying the Spring "applicationContext.xml" file located under 
"Other Sources/src/main/resources/<default package>/". Also, the passwords are encrypted in the database using SHA-512 and a 
salt plus expansion. To seed the database with these encrypted values a utility class is provided called "ShaHashGeneratorApp.java". 
This can be run as a regular desktop app and will help the programmer create the hashes. The code in this app could also be 
used, with some modifications, in the web app to allow for adding user accounts via a web form.
	
Using Spring Security the app is configured to force HTTPS via HSTS and also mitigates against XSS and CSRF attacks.

Having built this app in Netbeans 8.0.1, this author likes the ease with which the Entity classes and REST service 
classes can be reverse-engineered from database tables. A little customization and the app was ready to go. The Spring 
Security configuration took a bit of online research to get right, but once that was done the ease of configuration and power provided 
by Spring Security is unmatched in this author's opinion. I'm anxious to try this using Spring Boot, as I've experimented with
that previously and was impressed, but I didn't use security in that effort. 