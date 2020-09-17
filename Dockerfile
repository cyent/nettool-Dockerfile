FROM centos:7
# docker build --force-rm --no-cache -t nettool:VERSION .
RUN rm -f /etc/yum.repos.d/*
COPY ./*.repo /etc/yum.repos.d/
RUN yum clean all; yum -y install arptables arpwatch bind-utils bird bmon bridge-utils conntrack-tools curl dhclient dhcp dsniff dstat dstat ebtables ethtool fping ftp httpd-tools iftop initscripts iperf3 ipmitool iproute ipset iptables iputils ipv6calc lftp lrzsz mailx mtr ndisc6 net-tools nload nmap nmap-ncat nslookup ntpdate openssh-clients postfix psmisc psmisc sysstat sysstat tcpdump telnet traceroute tree wget whois wireless-tools wireshark bash zsh
COPY pause /
CMD ["/pause"]
