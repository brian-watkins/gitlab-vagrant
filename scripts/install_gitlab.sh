#!/bin/sh

echo "Installing Gitlab ..."

DEBIAN_FRONTEND=noninteractive apt-get -y install curl openssh-server ca-certificates postfix

curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash
apt-get -y install gitlab-ce

gitlab-ctl reconfigure

echo "Gitlab installed!"
