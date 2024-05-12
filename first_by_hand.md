
LucianDev. Valheim Server Setup Tutorial | Linux Guide. 19.12.2022 Youtube. [https://www.youtube.com/watch?v=DmVA2L9z4V0](https://www.youtube.com/watch?v=DmVA2L9z4V0)
Valve Developer Community. SteamCMD. Last edited 15.2.2024. [https://developer.valvesoftware.com/wiki/SteamCMD#Debian](https://developer.valvesoftware.com/wiki/SteamCMD#Debian)

```
sudo apt-get update

sudo apt install software-properties-common

sudo apt-add-repository non-free

sudo dpkg --add-architecture i386

sudo apt update

sudo apt install lib32gcc-s1 steamcmd

sudo adduser valheim

su - valheim

steamcmd

force_install_dir /home/valheim/server/

login anonymous

app_update 896660 validate

exit

cd server/

nano start_server.sh

./myserverstart.sh

sudo apt install ufw

sudo ufw allow 22

sudo ufw enable

sudo ufw allow 2456

sudo ufw allow 2457

```


![image](https://github.com/RonjaVee/Valheim-server/assets/148786247/51be48ce-260e-45b8-a325-377a78062f96)

In game searched for 127.0.0.1. Was unable to connect. I'm guessing the process may exceed available resources, such as memory or processor capacity on my virtual machine. The requirements can be found on [Valheim wiki on dedicated servers](https://valheim.fandom.com/wiki/Dedicated_servers)

![Näyttökuva (14)](https://github.com/RonjaVee/Valheim-server/assets/148786247/e9e117fb-cd49-4b94-bb46-a2c3a52974f1)


valheim@t002:~/server$ ./myserverstart.sh
Starting server PRESS CTRL-C to exit
[UnityMemory] Configuration Parameters - Can be set up in boot.config
    "memorysetup-bucket-allocator-granularity=16"
    "memorysetup-bucket-allocator-bucket-count=8"
    "memorysetup-bucket-allocator-block-size=4194304"
    "memorysetup-bucket-allocator-block-count=1"
    "memorysetup-main-allocator-block-size=16777216"
    "memorysetup-thread-allocator-block-size=16777216"
    "memorysetup-gfx-main-allocator-block-size=16777216"
    "memorysetup-gfx-thread-allocator-block-size=16777216"
    "memorysetup-cache-allocator-block-size=4194304"
    "memorysetup-typetree-allocator-block-size=2097152"
    "memorysetup-profiler-bucket-allocator-granularity=16"
    "memorysetup-profiler-bucket-allocator-bucket-count=8"
    "memorysetup-profiler-bucket-allocator-block-size=4194304"
    "memorysetup-profiler-bucket-allocator-block-count=1"
    "memorysetup-profiler-allocator-block-size=16777216"
    "memorysetup-profiler-editor-allocator-block-size=1048576"
    "memorysetup-temp-allocator-size-main=4194304"
    "memorysetup-job-temp-allocator-block-size=2097152"
    "memorysetup-job-temp-allocator-block-size-background=1048576"
    "memorysetup-job-temp-allocator-reduction-small-platforms=262144"
    "memorysetup-allocator-temp-initial-block-size-main=262144"
    "memorysetup-allocator-temp-initial-block-size-worker=262144"
    "memorysetup-temp-allocator-size-background-worker=32768"
    "memorysetup-temp-allocator-size-job-worker=262144"
    "memorysetup-temp-allocator-size-preload-manager=262144"
    "memorysetup-temp-allocator-size-nav-mesh-worker=65536"
    "memorysetup-temp-allocator-size-audio-worker=65536"
    "memorysetup-temp-allocator-size-cloud-worker=32768"
    "memorysetup-temp-allocator-size-gfx=262144"
Mono path[0] = '/home/valheim/server/valheim_server_Data/Managed'
Mono config path = '/home/valheim/server/valheim_server_Data/MonoBleedingEdge/etc'
Preloaded 'libDiskSpacePlugin.so'
Preloaded 'libsteam_api.so'
Unable to preload the following plugins:
        libparty.so
[Physics::Module] Initialized MultithreadedJobDispatcher with 1 workers.
Initialize engine version: 2022.3.17f1 (4fc78088f837)
[Subsystems] Discovering subsystems at path /home/valheim/server/valheim_server_Data/UnitySubsystems
Forcing GfxDevice: Null
GfxDevice: creating device client; threaded=0; jobified=0
NullGfxDevice:
    Version:  NULL 1.0 [1.0]
    Renderer: Null Device
    Vendor:   Unity Technologies
Begin MonoManager ReloadAssembly
- Loaded All Assemblies, in  0.112 seconds
- Finished resetting the current domain, in  0.002 seconds
ERROR: Shader Sprites/Default shader is not supported on this GPU (none of subshaders/fallbacks are suitable)
ERROR: Shader Sprites/Mask shader is not supported on this GPU (none of subshaders/fallbacks are suitable)
There is no texture data available to upload.
UnloadTime: 1.046667 ms
Privilege Multiplayer is not known on this platform. Privilege therefore is granted without check...
Privilege UserGeneratedContent is not known on this platform. Privilege therefore is granted without check...
Privilege CrossPlay is not known on this platform. Privilege therefore is granted without check...
05/12/2024 19:03:49: Set background loading budget to Low
ERROR: Shader TextMeshPro/Mobile/Distance Field shader is not supported on this GPU (none of subshaders/fallbacks are suitable)
ERROR: Shader GUI/Text Shader shader is not supported on this GPU (none of subshaders/fallbacks are suitable)
WARNING: Shader Unsupported: 'TextMeshPro/Distance Field' - All subshaders removed
WARNING: Shader Did you use #pragma only_renderers and omit this platform?
WARNING: Shader If subshaders removal was intentional, you may have forgotten turning Fallback off?
ERROR: Shader TextMeshPro/Distance Field shader is not supported on this GPU (none of subshaders/fallbacks are suitable)
WARNING: Shader Unsupported: 'TextMeshPro/Distance Field' - All subshaders removed
WARNING: Shader Did you use #pragma only_renderers and omit this platform?
WARNING: Shader If subshaders removal was intentional, you may have forgotten turning Fallback off?
Unloading 5 Unused Serialized files (Serialized files now loaded: 9)
UnloadTime: 0.273893 ms
05/12/2024 19:03:50: Fetching PlatformPrefs 'GuiScale' before loading defaults
05/12/2024 19:03:50: Fetching PlatformPrefs 'GuiScale' before loading defaults
Unloading 171 unused Assets to reduce memory usage. Loaded Objects now: 2143.
Total: 1.566958 ms (FindLiveObjects: 0.160320 ms CreateObjectMapping: 0.043983 ms MarkObjects: 1.251236 ms  DeleteObjects: 0.110798 ms)

05/12/2024 19:03:50: Starting to load scene:start.unity (169d7618616154c03be07e9ad3af5893)
05/12/2024 19:03:50: Set background loading budget to Normal
./myserverstart.sh: line 11: 12296 Killed                  ./valheim_server.x86_64 -name "Ronjan Valheim Testipalvelin" -port 2456 -world "Dedicated" -password "secret" -crossplay


