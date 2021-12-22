# pipeline-react-setup
Sets up npm and node on a debian container image. Used for pipelines, especially with the Google sdk container.

# testing 
Containers this was tested on: 
* gcr.io/google.com/cloudsdktool/cloud-sdk:latest  (currently Debian 10)

# how to use
To use locally using Docker: 
* copy repo script to a local directory (e.g. c:\Temp)
* open a command prompt and cd to the above directory
* run the below command:
```
docker run --volume="$pwd":"/workdir" -ti gcr.io/google.com/cloudsdktool/cloud-sdk:latest /bin/bash
cd /workdir
source ./setup_react.sh
```
* note: your current command shell directory (e.g. c:\temp) will be mapped to the container as "/workdir".

# contirbutors
* Cameron Kennedy
