# DDoS with constant switch of the ip with expressVPN
<p align="left">
<a href="#"><img alt="License" src="https://img.shields.io/github/license/mackostya/bombard-with-expressvpn?color=orange&style=flat"></a>
<a href="#"><img alt="MHDDoS last commit (main)" src="https://img.shields.io/github/last-commit/mackostya/bombard-with-expressvpn/main?color=green&style=flat"></a>
</p>

![](/logos/hacker.jpg)

This project implements a small script for a DDoS-attack with [alpine/bombardier](https://hub.docker.com/r/alpine/bombardier), which constantly switches the ip of the the attacker. Providers often can detect an attack after a few seconds or minutes and can block your ip. That is why I use [expressVPN](https://www.expressvpn.com) as it is reliable and has the possibility to operate the vpn connection in a shell on Linux platforms. The guideline how to start is decribed below.
## Warning!

*The DDoS-attack is a malicious attempt to disrupt the normal traffic of a targeted server. I recommend you to use it only in testing purposes and only under the agreement of the server provider. I do not hold any responsibilities about your usage of the software.*


## Guide

For the use of the script some software needs to be installed firstly. ExpressVPN can be controlled via shell only in **Linux**, that is why if you are a Linux user you can start with steps below. If you are a **Windows** or **Mac** user you can install Linux on any virtual Machine. I recomend a [VirtualBox](https://www.virtualbox.org) as it is easy to use and there are planty of guides and youtube videos on the Internet. 

**Note:** after installing and setting up your Ubuntu on your virtual machine I advice to go to your Settings->Network and set *"Attached to"* to a bridged adapter. This is needed so that your traffic goes directly to the router and not to your computer and afterwards to the router, which possibly would change your vpn ip to your local ip. 

After setting up the VM or using Linux directly:
1. Install [Docker](https://docs.docker.com/engine/install/ubuntu/).
2. Install [expressVPN](https://www.expressvpn.com/support/vpn-setup/app-for-linux/). You need firstly to create an account in expressVPN and select a VPN-option you want to use.
3. ... to be continued
