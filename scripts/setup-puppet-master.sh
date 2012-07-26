echo "192.168.2.11    puppet-agent.local" >> /etc/hosts

puppet master --mkusers --autosign true

ln -s /vagrant/etc/puppet /etc/puppet
