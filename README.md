
Docker for AOD analysis based on scipy-notepad that adds in 
- datajoint (which pulls in mym)

It also adds a script to connect to a VPN server when launching before calling. This requires environmental variables to be passed to docker:
 -e "PASSWD=$PASSWD" -e "USER=$USER" "GROUP=$GROUP" -e "VPN_SERVER=$VPN_SERVER"

I also like to pass in a working directory so that the work persists in the notebook

docker run -p 8888:8888 --privileged --user root -e "PASSWD=$PASSWD" -e "USER=$USER" -e "GROUP=$VPN_GROUP" -e "VPN_SERVER=VPN_SERVER" -v `pwd`/work:/home/jovyan/work -it peabody124/aod-analysis start-notebook.sh
