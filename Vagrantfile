Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/noble64"

  config.vm.provider "virtualbox" do |vb|

    vb.cpus = 1
    vb.memory = "1024"

  end

  config.vm.network "private_network", type: "static", ip: "192.168.56.75"
  config.vm.network "forwarded_port", guest: 80, host: 3030

  config.vm.provision "shell", path: "provision.sh"

  config.vm.synced_folder "home/", "/home/vagrant"
  config.vm.synced_folder "html/", "/var/www/html"

end