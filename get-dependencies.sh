#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

rolesdir=$(dirname $0)/..

[ ! -d $rolesdir/juju4.redhat_epel ] && git clone https://github.com/juju4/ansible-redhat-epel $rolesdir/juju4.redhat_epel
[ ! -d $rolesdir/cyverse_ansible.ansible_k3s ] && git clone https://github.com/juju4/ansible-k3s $rolesdir/cyverse_ansible.ansible_k3s
## galaxy naming: kitchen fails to transfer symlink folder
#[ ! -e $rolesdir/juju4.falco ] && ln -s ansible-falco $rolesdir/juju4.falco
[ ! -e $rolesdir/juju4.falco ] && cp -R $rolesdir/ansible-falco $rolesdir/juju4.falco

## don't stop build on this script return code
true
