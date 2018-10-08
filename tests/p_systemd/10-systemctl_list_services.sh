#!/bin/bash
# Author: Athmane Madjoudj <athmanem@gmail.com>
#         Rene Diepstraten <rene@renediepstraten.nl>

t_Log "Running $0 - Checking if systemctl can check if a service is enabled"
[ ${el_ver} -lt 7 ] && { t_Log "Systemd is part of el since el7, skipping systemd tests..." ; exit ; }

# auditd is used as example because it's standard with minimal install

systemctl is-enabled auditd.service > /dev/null

t_CheckExitStatus $?