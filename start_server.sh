#!/bin/bash

/home/valheim/steamcmd +login anonymous +force_install_dir /home/valheim/server/ +app_update 896660 validate +quit
cd /home/valheim/server/
./myserverstart.sh
