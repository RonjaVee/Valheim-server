As for now, this is how far I got with implementing the Salt states:


![image](https://github.com/RonjaVee/Valheim-server/assets/148786247/88e831d3-99eb-4caf-9ba9-8dd5a2dbc5eb)



local:
----------
          ID: update_repository
    Function: cmd.run
        Name: sudo apt-get update
      Result: True
     Comment: Command "sudo apt-get update" run
     Started: 14:42:23.342084
    Duration: 1309.709 ms
     Changes:
              ----------
              pid:
                  6777
              retcode:
                  0
              stderr:
              stdout:
                  Hit:1 https://deb.debian.org/debian bullseye InRelease
                  Hit:2 https://security.debian.org/debian-security bullseye-security InRelease
                  Hit:3 https://deb.debian.org/debian bullseye-updates InRelease
                  Hit:4 https://deb.debian.org/debian bullseye-backports InRelease
                  Reading package lists...
----------
          ID: install_ufw
    Function: pkg.installed
        Name: ufw
      Result: True
     Comment: All specified packages are already installed
     Started: 14:42:25.217158
    Duration: 16.168 ms
     Changes:
----------
          ID: allow_ssh
    Function: cmd.run
        Name: sudo ufw allow 22
      Result: True
     Comment: Command "sudo ufw allow 22" run
     Started: 14:42:25.233625
    Duration: 94.397 ms
     Changes:
              ----------
              pid:
                  7109
              retcode:
                  0
              stderr:
              stdout:
                  Skipping adding existing rule
                  Skipping adding existing rule (v6)
----------
          ID: allow_ports_2456_2457
    Function: cmd.run
        Name: sudo ufw allow 2457
      Result: True
     Comment: Command "sudo ufw allow 2457" run
     Started: 14:42:25.328326
    Duration: 92.331 ms
     Changes:
              ----------
              pid:
                  7123
              retcode:
                  0
              stderr:
              stdout:
                  Skipping adding existing rule
                  Skipping adding existing rule (v6)
----------
          ID: install_software_properties_common
    Function: pkg.installed
        Name: software-properties-common
      Result: True
     Comment: All specified packages are already installed
     Started: 14:42:25.421052
    Duration: 6.946 ms
     Changes:
----------
          ID: add_nonfree_repository
    Function: cmd.run
        Name: sudo apt-add-repository non-free
      Result: True
     Comment: Command "sudo apt-add-repository non-free" run
     Started: 14:42:25.428323
    Duration: 241.199 ms
     Changes:
              ----------
              pid:
                  7136
              retcode:
                  0
              stderr:
              stdout:
                  'non-free' distribution component is already enabled for all sources.
----------
          ID: add_i386_architecture
    Function: cmd.run
        Name: sudo dpkg --add-architecture i386
      Result: True
     Comment: Command "sudo dpkg --add-architecture i386" run
     Started: 14:42:25.669735
    Duration: 11.116 ms
     Changes:
              ----------
              pid:
                  7144
              retcode:
                  0
              stderr:
              stdout:
----------
          ID: update_repository_again
    Function: cmd.run
        Name: sudo apt-get update
      Result: True
     Comment: Command "sudo apt-get update" run
     Started: 14:42:25.681041
    Duration: 1224.778 ms
     Changes:
              ----------
              pid:
                  7146
              retcode:
                  0
              stderr:
              stdout:
                  Hit:1 https://security.debian.org/debian-security bullseye-security InRelease
                  Hit:2 https://deb.debian.org/debian bullseye InRelease
                  Hit:3 https://deb.debian.org/debian bullseye-updates InRelease
                  Hit:4 https://deb.debian.org/debian bullseye-backports InRelease
                  Reading package lists...
----------
          ID: install_required_packages
    Function: pkg.installed
        Name: lib32gcc-s1
      Result: True
     Comment: All specified packages are already installed
     Started: 14:42:26.906044
    Duration: 6.794 ms
     Changes:
----------
          ID: install_required_packages
    Function: pkg.installed
        Name: steamcmd
      Result: False
     Comment: Problem encountered installing package(s). Additional info follows:

              errors:
                  - Running scope as unit: run-r92b31a1b793d4d548a8ea280079fbc6e.scope
                    E: Sub-process /usr/bin/dpkg returned an error code (1)
     Started: 14:42:26.912982
    Duration: 2353.032 ms
     Changes:
----------
          ID: add_valheim_user
    Function: user.present
        Name: valheim
      Result: True
     Comment: User valheim is present and up to date
     Started: 14:42:29.267420
    Duration: 1.951 ms
     Changes:
----------
          ID: create_valheim_server_directory
    Function: cmd.run
        Name: sudo -u valheim mkdir -p /home/valheim/server
      Result: True
     Comment: Command "sudo -u valheim mkdir -p /home/valheim/server" run
     Started: 14:42:29.269515
    Duration: 10.735 ms
     Changes:
              ----------
              pid:
                  7844
              retcode:
                  0
              stderr:
              stdout:
----------
          ID: set_installation_directory
    Function: cmd.run
        Name: sudo -u valheim /usr/games/steamcmd +force_install_dir /home/valheim/server
      Result: False
     Comment: Command "sudo -u valheim /usr/games/steamcmd +force_install_dir /home/valheim/server" run
     Started: 14:42:29.280534
    Duration: 10.101 ms
     Changes:
              ----------
              pid:
                  7846
              retcode:
                  1
              stderr:
                  sudo: /usr/games/steamcmd: command not found
              stdout:
----------
          ID: steamcmd_login
    Function: cmd.run
        Name: sudo -u valheim /usr/games/steamcmd +login anonymous
      Result: False
     Comment: Command "sudo -u valheim /usr/games/steamcmd +login anonymous" run
     Started: 14:42:29.290982
    Duration: 9.654 ms
     Changes:
              ----------
              pid:
                  7847
              retcode:
                  1
              stderr:
                  sudo: /usr/games/steamcmd: command not found
              stdout:
----------
          ID: steamcmd_update_valheim_server
    Function: cmd.run
        Name: sudo -u valheim /usr/games/steamcmd +app_update 896660 validate
      Result: False
     Comment: Command "sudo -u valheim /usr/games/steamcmd +app_update 896660 validate" run
     Started: 14:42:29.300905
    Duration: 9.009 ms
     Changes:
              ----------
              pid:
                  7848
              retcode:
                  1
              stderr:
                  sudo: /usr/games/steamcmd: command not found
              stdout:
----------
          ID: start_valheim_server
    Function: cmd.run
        Name: sudo -u valheim /home/valheim/server/start_server.sh
      Result: False
     Comment: Command "sudo -u valheim /home/valheim/server/start_server.sh" run
     Started: 14:42:29.310125
    Duration: 10.532 ms
     Changes:
              ----------
              pid:
                  7849
              retcode:
                  1
              stderr:
                  sudo: /home/valheim/server/start_server.sh: command not found
              stdout:

Summary for local
-------------
Succeeded: 11 (changed=11)
Failed:     5
-------------
Total states run:     16
Total run time:    5.408 s
