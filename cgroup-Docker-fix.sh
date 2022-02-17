#!/bin/sh

#mkdir and mount commands to make docker usable instantly
sudo mkdir /sys/fs/cgroup/systemd
sudo mount -t cgroup -o none,name=systemd cgroup /sys/fs/cgroup/systemd

#Adds mkdir and mount to @reboot cronjob to keep it working
echo '@reboot sudo mkdir /sys/fs/cgroup/systemd && sudo mount -t cgroup -o none,name=systemd cgroup /sys/fs/cgroup/systemd' | sudo crontab

