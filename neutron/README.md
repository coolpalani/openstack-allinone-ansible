Role Name
========

Deploy OpenStack's neutron project for IceHouse release.

Requirements
------------

Fedora 20.

Role Variables
--------------

Listed variables from defaults.yml:

- NEUTRON_DBPASS: neutron-db-pw

	Password for database.

- NEUTRON_PASS: neutron-pw

	Password for keystone user, named neutron.

- METADATA_SECRET: METADATA_SECRET

- ext_nic: "{{ ansible_eth1 }}"

	Network interface card which will be used for external connectivity.

- ext_net:
  - gateway: 192.168.1.1
  - cidr: 192.168.1.0/24
  	- pool:
    	- start: 192.168.1.130
    	- end: 192.168.1.140

	Defines subnet of private network.

- demo_net:
  - gateway: 10.0.1.1
  - cidr: 10.0.1.0/24

	Defines internal network.

Unlisted variables are in vars.yml; there are variables which define state of configuration files.

Dependencies
------------

- common
- keystone
- nova

Example Playbook
-------------------------

    - hosts: servers
      roles:
         - { role: openstack-ts.neutron, NEUTRON_PASS: neutron-pw-lrk, ext_nic: "{{ ansible_p7p1 }}" }

License
-------

GPLv2

Author Information
------------------

Tomislav Slijepcevic (tomi.slijepcevic@gmail.com)
