# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box       = 'precise64'
  config.vm.box_url   = 'http://files.vagrantup.com/precise64.box'
  config.vm.hostname = 'sp-rails-dev-box'

  config.vm.network :forwarded_port, guest: 4002, host: 4003  # configure manually

  config.vm.provision :puppet,
    :manifests_path => 'puppet/manifests',
    :module_path    => 'puppet/modules',
    :manifest_file  => 'default.pp'

    config.vm.provision :shell, :path => "scripts/init.sh"
end
