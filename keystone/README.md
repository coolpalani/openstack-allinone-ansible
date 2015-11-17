Role Name
========

Deploy OpenStack's keystone project for IceHouse release.

Requirements
------------

Fedora 20.

Role Variables
--------------

Listed variables from defaults.yml:

- KEYSTONE_DBPASS: keystone-db-pw

	Password for database.

- ADMIN_TOKEN: ADMIN_TOKEN

	Passwordless keystone interaction uses admin token.

- admin_user:
	- password: admin-pw
  	- email: tomi.slijepcevic@gmail.com
  	- roles:
    	- tenant: admin
      		- roles:
        		- admin
        		- _member_
    	- tenant: service
      		- roles:
        		- admin

	Defines admin user. In this case with all privileges.

- demo_user:
	- password: demo-pw
  	- email: demo@gmail.com
  	- roles:
	    - tenant: demo
    		- roles:
        		- _member_

	Defines demo user. In this case with none privileges. 

Unlisted variables are in vars.yml; there are variables which define state of configuration files.

Dependencies
------------

- common

Example Playbook
-------------------------

    - hosts: servers
      roles:
         - { role: openstack-ts.keystone, ADMIN_TOKEN: lrk }

License
-------

GPLv2

Author Information
------------------

Tomislav Slijepcevic (tomi.slijepcevic@gmail.com)
