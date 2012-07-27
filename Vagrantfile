# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url= "http://files.vagrantup.com/precise64.box"

  config.vm.define :puppetmaster do |cfg|
    cfg.vm.host_name = "puppet-master.local"
    cfg.vm.network :hostonly, "192.168.2.10"

    cfg.vm.provision :shell, :path => "scripts/setup-puppet-master.sh"
  end

  config.vm.define :puppetagent_web do |cfg|
    cfg.vm.host_name = "puppet-agent-web.local"
    cfg.vm.network :hostonly, "192.168.2.11"
    cfg.vm.provision :shell, :path => "scripts/setup-puppet-agent-web.sh"
  end
  
  config.vm.define :puppetagent_memcached do |cfg|
    cfg.vm.host_name = "puppet-agent-memcached.local"
    cfg.vm.network :hostonly, "192.168.2.12"
    cfg.vm.provision :shell, :path => "scripts/setup-puppet-agent-memcached.sh"
  end

  config.vm.define :puppetagent do |cfg|
    cfg.vm.host_name = "puppet-agent.local"
    cfg.vm.network :hostonly, "192.168.2.13"
    cfg.vm.provision :shell, :path => "scripts/setup-puppet-agent.sh"
  end

end
