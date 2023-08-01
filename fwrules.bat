netsh advfirewall firewall add rule name="My Application" dir=in action=allow program="C:\MyApp\MyApp.exe" enable=yes
netsh advfirewall firewall add rule name= "Open Port 80" dir=in action=allow protocol=TCP localport=80
netsh advfirewall firewall add rule name= "Open Port 81" dir=in action=allow protocol=TCP localport=81
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=allow
netsh advfirewall firewall add rule name= "All ICMP V4" protocol=icmpv4:any,any dir=in action=allow
netsh advfirewall firewall add rule name="Block Type 13 ICMP V4" protocol=icmpv4:13,any dir=in action=block
netsh advfirewall set currentprofile logging filename %systemroot%\system32\LogFiles\Firewall\pfirewall.logging
netsh advfirewall set currentprofile logging maxfilesize 4096
netsh advfirewall set currentprofile logging droppedconnections enable
netsh advfirewall set currentprofile logging allowedconnections enable
netsh advfirewall firewall add rule name= "Open Port 90" dir=in action=allow protocol=TCP localport=90
netsh advfirewall firewall add rule name= "Open Port 91" dir=in action=allow protocol=TCP localport=91
netsh advfirewall firewall add rule name= "Open Port 87" dir=in action=allow protocol=TCP localport=87
netsh advfirewall firewall add rule name= "Open Port 86" dir=in action=allow protocol=TCP localport=86
netsh advfirewall firewall add rule name= "Open Port 85" dir=in action=allow protocol=TCP localport=85
netsh advfirewall firewall add rule name= "Open Port 82" dir=in action=allow protocol=TCP localport=82
netsh advfirewall firewall add rule name= "Open Port 83" dir=in action=allow protocol=TCP localport=83
netsh advfirewall firewall add rule name= "Open Port 84" dir=in action=allow protocol=TCP localport=84
netsh advfirewall firewall add rule name="My Application" dir=in action=allow program="C:\MyApp\MyApp.exe" enable=yes
netsh advfirewall firewall add rule name= "Open Port 101" dir=in action=allow protocol=TCP localport=101
netsh advfirewall firewall add rule name= "Open Port 100" dir=in action=allow protocol=TCP localport=100
netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol=icmpv4:8,any dir=in action=allow
netsh advfirewall firewall add rule name= "All ICMP V4" protocol=icmpv4:any,any dir=in action=allow
netsh advfirewall firewall add rule name="Block Type 13 ICMP V4" protocol=icmpv4:13,any dir=in action=block

exit