Vagrant.configure("2") do |config|
  config.vm.box = "geerlingguy/centos7"
  #config.vm.box = "centos/6"
  config.vm.hostname = "mysql"

config.vm.network :private_network, ip: "192.168.56.105"

config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true

config.hostmanager.aliases = %w(kernel.loc )

# hostmanager provisioner
config.vm.provision :hostmanager

  config.vm.provider "virtualbox" do |vb|
     vb.name = "kernel_7"
    # Display the VirtualBox GUI when booting the machine
    #vb.gui = true
  
    # Customize the amount of memory on the VM:
    vb.memory = "2048"
    vb.cpus = "4"
  end
  

config.vm.provision :shell, path: "./bootstrap.sh"
end
