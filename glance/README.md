Role Name
========

Deploy OpenStack's glance project for IceHouse release.

Requirements
------------

Fedora 20.

Role Variables
--------------

Listed variables from defaults.yml:

- GLANCE_DBPASS: glance-db-pw

	Password for database.

- GLANCE_PASS: glance-pw

	Password for keystone user, named glance.

Unlisted variables are in vars.yml; there are variables which define state of configuration files.

Dependencies
------------

- common
- keystone

Example Playbook
-------------------------

    - hosts: servers
      roles:
         - { role: openstack-ts.glance, GLANCE_PASS: glance-pw-lrk }

License
-------

GPLv2

Author Information
------------------

Tomislav Slijepcevic (tomi.slijepcevic@gmail.com)
