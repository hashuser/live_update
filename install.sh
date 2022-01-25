#!/bin/bash

system_config(){
  echo "net.core.default_qdisc = fq_codel" > /etc/sysctl.conf
  echo "net.ipv4.tcp_congestion_control = bbr" >> /etc/sysctl.conf
  echo "net.ipv4.tcp_keepalive_time = 300" >> /etc/sysctl.conf
  echo "net.ipv4.tcp_keepalive_intvl = 5" >> /etc/sysctl.conf
  echo "net.ipv4.tcp_keepalive_probes = 3" >> /etc/sysctl.conf
  echo "net.ipv4.tcp_moderate_rcvbuf = 1" >> /etc/sysctl.conf
  echo "net.ipv4.tcp_window_scaling = 1" >> /etc/sysctl.conf
  echo "net.core.somaxconn = 262114" >> /etc/sysctl.conf
  echo "net.ipv4.tcp_adv_win_scale = 3" >> /etc/sysctl.conf
  echo "net.ipv4.tcp_max_syn_backlog = 8192" >> /etc/sysctl.conf
  echo "net.nf_conntrack_max = 2000000" >> /etc/sysctl.conf
  echo "net.ipv4.tcp_slow_start_after_idle = 0" >> /etc/sysctl.conf
  echo "net.ipv4.tcp_fin_timeout = 30" >> /etc/sysctl.conf
  echo "net.ipv4.tcp_rmem = 4096 524288 12582912" >> /etc/sysctl.conf
  echo "net.core.rmem_default = 524288" >> /etc/sysctl.conf
  echo "net.core.rmem_max = 12582912" >> /etc/sysctl.conf
  echo "net.ipv4.tcp_wmem = 4096 524288 12582912" >> /etc/sysctl.conf
  echo "net.core.wmem_default = 524288" >> /etc/sysctl.conf
  echo "net.core.wmem_max = 12582912" >> /etc/sysctl.conf
  echo "net.ipv4.tcp_mem = 152232 202976 228348" >> /etc/sysctl.conf
  sysctl -p
}

main(){
  system_config
}

main
