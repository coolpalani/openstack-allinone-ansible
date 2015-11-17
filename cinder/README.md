Role Name
========

Deploy OpenStack's cinder project for IceHouse release.

Requirements
------------

Fedora 20.

Role Variables
--------------

Listed variables from defaults.yml:

- CINDER_DBPASS: cinder-db-pw

	Password for database.

- CINDER_PASS: cinder-pw

	Password for keystone user, named cinder.

- CINDER_VOLUME: /dev/sdb

	Path to block storage volume which will hold cinder's volumes.

Unlisted variables are in vars.yml; there are variables which define state of configuration files.

Dependencies
------------

- common
- keystone

Example Playbook
-------------------------

    - hosts: servers
      roles:
         - { role: openstack-ts.cinder, CINDER_PASS: cinder-pw-lrk, CINDER_VOLUME: /dev/vdb }

License
-------

GPLv2

Author Information
------------------

Tomislav Slijepcevic (tomi.slijepcevic@gmail.com)
