####Lab_1 Vagrant.
Vagrant.configure("2") do |config|

#define nginx vmachine
config.vm.define "nginx" do |nginx|
####    Select box and setup hostname
    nginx.vm.box = "sbeliakou/centos-6.8-x86_64"
    nginx.vm.hostname = "nginx"
####    ethernet interfaces
    nginx.vm.network "private_network", ip: "192.168.100.10"
    nginx.vm.network "public_network", bridge: "eno1"
####    shared directories
    nginx.vm.synced_folder "share1/", "/v_share_1"
    nginx.vm.synced_folder "share2/", "/v_share_2", type: "rsync"
####    vm memory settings
    nginx.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
    end
#### including script
    nginx.vm.provision "shell", path: "nginx.sh"
####

end
#end nginx vmachine


#define tomcat vmachine

config.vm.define "tomcat" do |tomcat|
####    Select box and setup hostname
    tomcat.vm.box="sbeliakou/centos-6.8-x86_64"
    tomcat.vm.hostname="tomcat"
####    ethernet interfaces
    tomcat.vm.network "private_network", ip: "192.168.100.20"
    tomcat.vm.network "public_network", bridge: "eno1"
####    shared directories
    tomcat.vm.synced_folder "share1/", "/v_share_1"
    tomcat.vm.synced_folder "share2/", "/v_share_2", type: "rsync"
####    vm memory settings
    tomcat.vm.provider "virtualbox" do |vb|
        vb.memory = "4096"
    end
#### including script
    tomcat.vm.provision "shell", path: "tomcat.sh"
####
end
#end tomcat machine

end
