Role Name
========

Preparations for deploying Openstack's IceHouse release.

Requirements
------------

Fedora 20.

Role Variables
--------------

Listed variables from defaults.yml:

- mysql_root_password: foobar
	
	Password for root user of database which will hold OpenStack data.

- ip: "{{ ansible_eth0.ipv4.address }}"

	Set ip which will be used for deploying Openstack's projects.

Dependencies
------------

None.

Example Playbook
-------------------------

    - hosts: servers
      roles:
         - { role: openstack-ts.common, mysql_root_password: foobar }

License
-------

GPLv2

Author Information
------------------

Tomislav Slijepcevic (tomi.slijepcevic@gmail.com)
