# valheim_setup.sls

update_packages:
  pkg.uptodate:
    - name: software-properties-common

add_nonfree_repository:
  cmd.run:
    - name: sudo apt-add-repository non-free

add_i386_architecture:
  cmd.run:
    - name: sudo dpkg --add-architecture i386

update_repository:
  pkg.refresh_db: []

install_packages:
  pkg.installed:
    - pkgs:
      - lib32gcc-s1
      - steamcmd

create_user:
  user.present:
    - name: valheim