# Update package repository
update_repository:
  cmd.run:
    - name: sudo apt-get update

# Install UFW
install_ufw:
  pkg.installed:
    - name: ufw

# Allow SSH port
allow_ssh:
  cmd.run:
    - name: sudo ufw allow 22

# Allow ports 2456 and 2457
allow_ports_2456_2457:
  cmd.run:
    - name: sudo ufw allow 2456
    - name: sudo ufw allow 2457

# Install software-properties-common package
install_software_properties_common:
  pkg.installed:
    - name: software-properties-common

# Add non-free repository
add_nonfree_repository:
  cmd.run:
    - name: sudo apt-add-repository non-free

# Add i386 architecture
add_i386_architecture:
  cmd.run:
    - name: sudo dpkg --add-architecture i386

# Update package repository (repeated)
update_repository_again:
  cmd.run:
    - name: sudo apt-get update

# Install required packages
install_required_packages:
  pkg.installed:
    - names:
      - lib32gcc-s1
      - steamcmd

# Add the 'valheim' user
add_valheim_user:
  user.present:
    - name: valheim

# Create directory for the server
create_valheim_server_directory:
  cmd.run:
    - name: sudo -u valheim mkdir -p /home/valheim/server

# Set installation directory for steamcmd
set_installation_directory:
  cmd.run:
    - name: sudo -u valheim /usr/games/steamcmd +force_install_dir /home/valheim/server
    - cwd: /home/valheim/server

# Run steamcmd and log in as anonymous
steamcmd_login:
  cmd.run:
    - name: sudo -u valheim /usr/games/steamcmd +login anonymous

# Update Valheim server
steamcmd_update_valheim_server:
  cmd.run:
    - name: sudo -u valheim /usr/games/steamcmd +app_update 896660 validate

# Start the server
start_valheim_server:
  cmd.run:
    - name: sudo -u valheim /home/valheim/server/start_server.sh
