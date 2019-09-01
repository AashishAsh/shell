Vagrant::Config.run do |config|
   config.vm.box = "custom-centos6"
		(20..22).each do |i|
			config.vm.define "node#{i}" do |node|
			node.vm.provision :shell, path: "centos-provision.sh"
			node.vm.network :hostonly, "192.168.33.#{i}"
			node.ssh.private_key_path = File.expand_path("C:/cygwin/Devopsnew/nodess/id_rsa", __FILE__)
			node.vm.customize [
                        "modifyvm", :id,
                        "--memory", "1024"
                      ]
		end
  end
end
