Role Name
========

Deploy OpenStack's horizon project for IceHouse release.

Requirements
------------

Fedora 20.

Role Variables
--------------

None.

Dependencies
------------

- common

Example Playbook
-------------------------

    - hosts: servers
      roles:
         - { role: openstack-ts.horizon }

License
-------

GPLv2

Author Information
------------------

Tomislav Slijepcevic (tomi.slijepcevic@gmail.com)
