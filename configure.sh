#!/usr/bin/env bash
# Configure the system for a basic salt install, such as salt install via easy_install.
set -e

mkdir --parent /etc/salt/
mkdir --parent /var/log/salt/minion
mkdir --parent /var/cache/salt/minion/

echo 'file_client: local' > /etc/salt/minion
cp /etc/hostname /etc/salt/minion_id

# Salt expects its configuration at /srv/salt
ln --symbolic `pwd` /srv/salt
