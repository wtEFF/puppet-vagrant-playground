echo "192.168.2.11    puppet-agent.local" >> /etc/hosts

puppet master --mkusers --autosign true

rm -rf /etc/puppet/manifests
ln -s /vagrant/etc/puppet/manifests /etc/puppet/manifests
ln -s /vagrant/etc/puppet/modules /etc/puppet/modules
