Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 80, host: 9090
  config.vm.network "forwarded_port", guest: 22, host: 2222, ip: '10.37.18.18', id: 'ssh', auto_correct: true

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end

  config.vm.provision "shell", path: "./scripts/install_gitlab.sh", privileged: true

end
