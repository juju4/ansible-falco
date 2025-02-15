[![Actions Status - Master](https://github.com/juju4/ansible-falco/workflows/AnsibleCI/badge.svg)](https://github.com/juju4/ansible-falco/actions?query=branch%3Amain)
[![Actions Status - Devel](https://github.com/juju4/ansible-falco/workflows/AnsibleCI/badge.svg?branch=devel)](https://github.com/juju4/ansible-falco/actions?query=branch%3Adevel)

# Falco Behavioral activity monitor ansible role

Ansible role to setup Falco
* https://falco.org/
* https://sysdig.com/opensource/falco/
* https://github.com/falcosecurity/falco

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.10-18

### Operating systems

Target Debian/Ubuntu and Redhat/Centos.

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.falco
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).

Once you ensured all necessary roles are present, You can test with:
```
$ cd /path/to/roles/juju4.falco
$ kitchen verify
$ kitchen login
```
or
```
$ cd /path/to/roles/juju4.falco/test/vagrant
$ vagrant up
$ vagrant ssh
```
or
```
$ pip install molecule docker
$ molecule test
$ MOLECULE_DISTRO=ubuntu:24.04 molecule test --destroy=never
```
(be mindful of container limitations for a kernel module tools)

## Troubleshooting & Known issues

* Not possible to run it inside containers
https://github.com/draios/sysdig/issues/152

## License

BSD 2-clause
