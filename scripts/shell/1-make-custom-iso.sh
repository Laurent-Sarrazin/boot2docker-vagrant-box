#!/bin/bash

# Build a custom b2d with vbox extensions
if [[ ! -f b2d.iso ]]; then
	cd b2d-vbox
	vagrant up #The vagrant up will build the iso and copy it locally
	vagrant destroy -f
	cd -
	cp b2d-vbox/b2d.iso .
fi

# Standard mitchellh build injecting vagrant things into the b2d.iso
if [[ ! -f boot2docker-vagrant.iso ]]; then
	vagrant up
	vagrant ssh -c 'cd /vagrant && sudo bash build-iso.sh'
	vagrant destroy -f
fi

