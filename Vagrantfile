Vagrant.configure("2") do |config|
    # Web Server 1
    config.vm.define "web1" do |web1|
      web1.vm.box = "ubuntu/focal64"
      config.vm.box_version = "20240821.0.1"
      web1.vm.network "private_network", ip: "192.168.56.11"
      web1.vm.provision "shell", path: "provisioning/webserver.sh"
    end
  
    # Web Server 2
    config.vm.define "web2" do |web2|
      web2.vm.box = "ubuntu/focal64"
      config.vm.box_version = "20240821.0.1"
      web2.vm.network "private_network", ip: "192.168.56.12"
      web2.vm.provision "shell", path: "provisioning/webserver.sh"
    end
  
    # HAProxy Load Balancer
    config.vm.define "haproxy" do |haproxy|
      haproxy.vm.box = "ubuntu/focal64"
      config.vm.box_version = "20240821.0.1"
      haproxy.vm.network "private_network", ip: "192.168.56.10"
      haproxy.vm.provision "shell", path: "provisioning/haproxy.sh"
    end
  end
