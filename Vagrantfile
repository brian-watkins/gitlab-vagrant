host_ip = ENV['GITLAB_HOST'] || '127.0.0.1'

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 9090, host: 9090
  config.vm.network "forwarded_port", guest: 22, host: 2222, ip: host_ip, id: 'ssh'

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end

  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = "berks-cookbooks"
    chef.add_recipe "postfix"
    chef.add_recipe "omnibus-gitlab"

    chef.json = {
      'omnibus-gitlab' => {
        'gitlab_rb' => {
          'external_url' => "http://#{host_ip}:9090",
          'gitlab-rails' => {
            'gitlab_shell_ssh_port' => 2222
          }
        }
      }
    }
  end

end
