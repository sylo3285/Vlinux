#!/usr/bin/env bash

useradd -m -G wheel,video,audio,input -s /usr/bin/zsh vlinux

cp -a /etc/skel/. /home/vlinux/
chown -R vlinux:vlinux /home/vlinux
chown -R vlinux:vlinux /themes