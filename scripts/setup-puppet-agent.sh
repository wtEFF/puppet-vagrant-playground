echo "192.168.2.10    puppet-master.local" >> /etc/hosts

cat <<HERE > /tmp/intu.facts
Role = Web
Platform = QDCA
HERE

puppet agent --server puppet-master.local --test --pluginsync
