Role Name
========

Deploy OpenStack's nova project for IceHouse release.

Requirements
------------

Fedora 20.

Role Variables
--------------

Listed variables from defaults.yml:

- NOVA_DBPASS: nova-db-pw

	Password for database.

- NOVA_PASS: nova-pw

	Password for keystone user, named nova.

Unlisted variables are in vars.yml; there are variables which define state of configuration files.

Dependencies
------------

- common
- keystone

Example Playbook
-------------------------


    - hosts: servers
      roles:
         - { role: openstack-ts.nova, NOVA_PASS: nova-pw-lrk }

License
-------

GPLv2

Author Information
------------------

Tomislav Slijepcevic (tomi.slijepcevic@gmail.com)
