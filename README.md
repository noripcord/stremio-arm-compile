# Script to compile Stremio on GNU/Linux Debian flavors 
### (Tested on Debian 11, Ubuntu 20LTS, both on ARM64 metal)

Exec this on a terminal:
```
% sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/noripcord/stremio-arm-compile/main/debian.sh)"
```

Give it time, it will install, for chrissake

# If you don't wanna compile

There's a release here with the binary already compiled for ARM64.

Download the release, extract it, install the dependencies:
```
% sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/noripcord/stremio-arm-compile/main/debian_dependencies.sh)"
```

and link node in the build folder:
```
% ln -s "$(which node)" <path_to_stremio_build_folder_that_you_downloaded>
```

and you'll be ready to go.


