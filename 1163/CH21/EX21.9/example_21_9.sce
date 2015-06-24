clear;
clc;
disp("--------------Example 21.9---------------")
// display the example
printf("We use netstat with three options: -n, -r, and -a. The -n option gives the numeric versions of IP\naddresses, the -r option gives the routing table, and the -a option gives all addresses (unicast and\nmulticast). Gateway defines the router, Iface defines the interface.\n\n");
printf("$ netstat  -nra\nKernel IP routing table\nDestination    Gateway          Mask         Flags   Iface\n153.18.16.0   0.0.0.0          255.255.240.0  U      eth0\n169.254.0.0   0.0.0.0          255.255.0.0    U      eth0\n127.0.0.0     0.0.0.0          255.0.0.0      U      lo\n224.0.0.0     0.0.0.0          224.0.0.0      U      eth0\n0.0.0.0       153.18.31.254    0.0.0.0        UG     eth0\n\n");
printf("Any packet with a multicast address from 224.0.0.0 to 239.255.255.255 is masked and delivered to the Ethernet interface.")





