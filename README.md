# DDoS with constant switch of the ip with expressVPN
<p align="left">
<a href="#"><img alt="License" src="https://img.shields.io/github/license/mackostya/bombard-with-expressvpn?color=orange&style=flat"></a>
<a href="#"><img alt="Last commit" src="https://img.shields.io/github/last-commit/mackostya/bombard-with-expressvpn/main?color=green&style=flat"></a>
</p>

![](/logos/hacker.jpg)

## Intro

This project implements a small script for a DDoS-attack with [alpine/bombardier](https://hub.docker.com/r/alpine/bombardier), which constantly switches the ip of the the attacker. Providers often can detect an attack after a few seconds or minutes and can block your ip. That is why [expressVPN](https://www.expressvpn.com) is used in this project, as it is reliable and has the possibility to operate the vpn connection in a shell on Linux platforms. A step-by-step guide is described below.

## Warning!

*The DDoS-attack is a malicious attempt to disrupt the normal traffic of a targeted server. It is recommend to use it only in testing purposes and only under the agreement of the server provider. The author does not hold any responsibilities about your usage of the software.*


## Guide

For the use of the script some software needs to be installed firstly. ExpressVPN can be controlled via shell only in **Linux**. If you are a **Windows** or **Mac** user you can install Linux on any virtual Machine. I recomend **Ubuntu** on a [VirtualBox](https://www.virtualbox.org) as it is easy to use and there are planty of guides and youtube videos on the Internet. 

After setting up the VM or using Linux directly:
1. Install [Docker](https://docs.docker.com/engine/install/ubuntu/).
2. Install [expressVPN](https://www.expressvpn.com/support/vpn-setup/app-for-linux/). You need firstly to create an account in expressVPN and select a VPN-option you want to use. Afterwards activate expressVPN on your device.
3. Open Terminal and clone the project on your computer:
`git clone https://github.com/mackostya/bombard-with-expressVPN.git`
4. `cd bombard-with-expressVPN`
5. Now you can call the script as follows:

`sudo bash bombard.sh -t {some_target} -p {port} -c {Country}`

Description:
 - `-t` stands for the targeted ip or link
 - `-p` stands for the targetted port
 - `-c` stands for the name of the country you want your VPN to run in. You can check the list of countries, available by the expressVPN with `expressvpn ls`

Example (don't use this target ip):
`sudo bash bombard.sh -t 0.0.0.0 -p 80 -c Belarus`

Script starts the alpine/bombardier 10 times for 60s each. It is expected to take some more time after each alpine/bombardier execution.

After the script finishes to run you can execute the following script, to delete all docker containers, that were created, while running the script:
`sudo docker rm -f $(sudo docker ps -a -q)`
