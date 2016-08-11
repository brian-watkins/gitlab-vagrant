#!/bin/sh

echo "Installing Gitlab ..."

apt-get install curl openssh-server ca-certificates postfix

curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash
apt-get install gitlab-ce

gitlab-ctl reconfigure

echo "Gitlab installed!"
