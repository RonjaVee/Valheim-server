### sources used

LucianDev. Valheim Server Setup Tutorial | Linux Guide. 19.12.2022 Youtube. [https://www.youtube.com/watch?v=DmVA2L9z4V0](https://www.youtube.com/watch?v=DmVA2L9z4V0)
Valve Developer Community. SteamCMD. Last edited 15.2.2024. [https://developer.valvesoftware.com/wiki/SteamCMD#Debian](https://developer.valvesoftware.com/wiki/SteamCMD#Debian)

Commands used:

```
sudo apt-get update

sudo apt install ufw

sudo ufw allow 22

sudo ufw allow 2456

sudo ufw allow 2457

sudo apt install software-properties-common

sudo apt-add-repository non-free

sudo dpkg --add-architecture i386

sudo apt update

sudo apt install lib32gcc-s1 steamcmd

sudo adduser valheim

su - valheim

mkdir server

cd server/

steamcmd

force_install_dir /home/valheim/server/

login anonymous

app_update 896660 validate

exit

# you can edit the start_server.sh file here for additional configuration

./start_server.sh

```

In game searched for 127.0.0.1:2456. Was unable to connect.

![Näyttökuva (14)](https://github.com/RonjaVee/Valheim-server/assets/148786247/e9e117fb-cd49-4b94-bb46-a2c3a52974f1)

I created a virtual machine with Vagrant for testing using this configuration (I gave the server requirements to ChatGPT and used the vagrantfile contents it gave):

```
Vagrant.configure("2") do |config|
  config.vm.box = "debian/bullseye64"
  config.vm.hostname = "valheim-server"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 4096 # 4 GB RAM
    vb.cpus = 2      # 2 CPU cores
  end
end

```






