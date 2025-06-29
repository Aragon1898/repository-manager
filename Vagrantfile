Vagrant.configure("2") do |config|
  # Указываем базовый образ для Ubuntu
  config.vm.box = "ubuntu/focal64" # Ubuntu 20.04 LTS

  # Настройка сети
  config.vm.network "forwarded_port", guest: 3000, host: 3000 # Порт для приложения

  # Провизия для Ubuntu
  config.vm.provision "shell", path: "provision-ubuntu.sh"

  # Настройка синхронизации папок
  config.vm.synced_folder ".", "/home/vagrant/repository-manager"

  # Указываем базовый образ для Windows
  config.vm.define "windows" do |windows|
    windows.vm.box = "windows/10" # Пример образа Windows

    # Провизия для Windows
    windows.vm.provision "shell", path: "provision-windows.ps1"

    # Настройка синхронизации папок для Windows
    windows.vm.synced_folder ".", "C:\\repository-manager"
  end
end
