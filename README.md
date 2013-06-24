Perch Demo: Swift Migrations
============================

This demo site shows how Perch can be added to an existing website, or added simply without changing your current workflow.

We start with a set of HTML files and then add Perch Regions and create templates to manage the content.

The site also includes the official blog and forms apps. The development of this site is detailed in our step by step tutorial. This is a great starting point if you are new to Perch.

The Swift Migrations site was designed for Perch by Laura Kalbag. 

Setup 
-----

To get up and running, you'll need to drop your `perch/core` folder into place, and add each of the add-ons to the `perch/addons` folder. Update the `perch/config.php` file with your own details.

Database
--------

The `sql/swift_demo.sql` file contains the following placeholders for the primary user's details. Replace them out in the SQL before importing it.

* `{firstname}`
* `{lastname}` 
* `{email}` 
* `{username}`
* `{password}`

The password can be an MD5 (use `5f4dcc3b5aa765d61d8327deb882cf99` to log in with 'password'). It will be hashed to something more secure the first time it's used.
