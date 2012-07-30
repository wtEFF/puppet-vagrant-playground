echo "192.168.2.10    puppet-master.local" >> /etc/hosts

cat <<HERE > /etc/custom.facts
Role = app
Platform = QDCA
site = site1
HERE

puppet agent --server puppet-master.local --pluginsync
