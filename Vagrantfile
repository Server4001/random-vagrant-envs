# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "bento/centos-6.7"
    config.vm.box_version = "2.2.7"

    config.vm.define "first" do |first|
        first.vm.network :private_network, ip: "192.168.35.54"

        first.vm.hostname = "first.gluster.loc"
        first.vm.synced_folder "./", "/vagrant", mount_options: ["dmode=777,fmode=777"]

        first.vm.provision :shell, path: "provision/first.sh", privileged: true

        first.vm.provider "virtualbox" do |vb|
          vb.customize ["modifyvm", :id, "--memory", "512"]
          vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        end
    end

    config.vm.define "second" do |second|
        second.vm.network :private_network, ip: "192.168.35.55"

        second.vm.hostname = "second.gluster.loc"
        second.vm.synced_folder "./", "/vagrant", mount_options: ["dmode=777,fmode=777"]

        second.vm.provision :shell, path: "provision/second.sh", privileged: true

        second.vm.provider "virtualbox" do |vb|
          vb.customize ["modifyvm", :id, "--memory", "512"]
          vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        end
    end

    config.vm.define "third" do |third|
        third.vm.network :private_network, ip: "192.168.35.56"

        third.vm.hostname = "third.gluster.loc"
        third.vm.synced_folder "./", "/vagrant", mount_options: ["dmode=777,fmode=777"]

        third.vm.provision :shell, path: "provision/third.sh", privileged: true

        third.vm.provider "virtualbox" do |vb|
          vb.customize ["modifyvm", :id, "--memory", "512"]
          vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        end
    end
end
