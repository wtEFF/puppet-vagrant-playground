echo "192.168.2.10    puppet-master.local" >> /etc/hosts

cat <<HERE > /tmp/intu.facts
Role = memcached
Platform = QDCA
site = site1
HERE

puppet agent --server puppet-master.local --test --pluginsync
