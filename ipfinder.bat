for /L %i IN (1,1,254) DO ping -w 2 -n 1 192.168.3.%i |find /i "TTL"
nmap -sS 192.168.1.0/24
nmap -A 192.168.1.1-100
arp -a
set/p option=请输入内容以结束: