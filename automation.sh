#!/bin/bash

docker run --name ubuntu -d --rm pycontribs/ubuntu sleep 999999 

docker run --name centos7 -d --rm pycontribs/centos:7 sleep 999999

docker run --name fedora -d --rm pycontribs/fedora sleep 999999

ansible-playbook site.yml -i inventory/prod.yml --ask-vault-pass

docker stop ubuntu fedora centos7
