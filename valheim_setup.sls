# Set up firewall
setup_firewall:
  pkg.installed:
    - name: ufw

allow_ssh:
  cmd.run:
    - name: sudo ufw allow 22

allow_ports_2456_2457:
  cmd.run:
    - name: sudo ufw allow 2456
    - name: sudo ufw allow 2457

# Server setup
setup_server:
  pkg.installed:
    - names:
      - software-properties-common
      - lib32gcc-s1
      - steamcmd

add_nonfree_repository:
  cmd.run:
    - name: sudo apt-add-repository non-free

add_i386_architecture:
  cmd.run:
    - name: sudo dpkg --add-architecture i386

update_repository:
  cmd.run:
    - name: sudo apt update

add_valheim_user:
  user.present:
    - name: valheim

create_server_directory:
  cmd.run:
    - name: mkdir /home/valheim/server

change_directory_to_server:
  cmd.run:
    - name: cd /home/valheim/server

run_steamcmd_commands:
  cmd.run:
    - name: |
        steamcmd +login anonymous +force_install_dir /home/valheim/server/ +app_update 896660 validate +quit

# Start Valheim server
start_valheim_server:
  cmd.run:
    - name: "su - valheim -c '/home/valheim/server/start_server.sh'"
