VAGRANTFILE_API_VERSION = "2"

#########################################################
# Provisioning envvars and defaults
# =================================
#
#########################################################

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  ###################################################
  # Demo server
  # =============
  #
  ###################################################

  config.vm.define "my_server" do |server|

    # box
    server.vm.box = "ubuntu/bionic64"

    # SSH configuration
    server.ssh.forward_agent = true
    server.ssh.insert_key = true

    server.vm.network "forwarded_port", guest: 5432, host: 5432

    # Provisioning
    server.vm.provision "ansible" do |ansible|
      ansible.compatibility_mode = "2.0"

      # ansible.inventory_path = ANSIBLE_INVENTORY_FILE
      ansible.playbook = "demo.yml"
      # ansible.extra_vars = {

      # }

      ansible.groups = {
        "my_servers" => [ "my_server" ]
      }

    end # server.vm.provision

  end # config.vm.define


end
