#!/bin/sh

VALUE="${@: -1}"
ARGS=${@:1:$#-1}

prev_value=$(openstack-config --get $ARGS)

if [[ $prev_value == $VALUE ]]; then
  echo 0
else
  openstack-config --set $ARGS $VALUE
  echo 1
fi
