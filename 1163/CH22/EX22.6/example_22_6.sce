clear;
clc;
disp("--------------Example 22.6----------------")
// display the example
printf("One utility that can be used to find the contents of a routing table for a host or router is netstat in UNIX or LINUX.\nThe following shows the list of the contents of a default server. Two options, r and n are used.\nThe option r indicates that we are interested in the routing table, and the option n indicates that we are looking for numeric addresses.\nThis is a routing table for a host, not a router. Although we discussed the routing table for a router throughout the chapter,\na host also needs a routing table.\n");
// output of $netstat -rn command
printf("\n$ netstat -rn\nKernel IP routing table\nDestination   Gateway       Mask           Flags    Iface\n153.18.16.0   0.0.0.0       255.255.240.0     U     eth0\n127.0.0.0     0.0.0.0       255.0.0.0         U     la\n0.0.0.0      153.18.31.254  0.0.0.0           G     eth0");
// explain the diffrent columns
printf("\n\nNote also that the order of columns is different from what we showed. The destination column here defines the network address.\nThe term gateway used by UNIX is synonymous with router. This column acmally defines the address of the next hop.\nThe value 0.0.0.0 shows that the delivery is direct. The last entry has a flag of G,\nwhich means that the destination can be reached through a router (default router). The Iface defines the interface.\nThe host has only one real interface,eth0,which means interface 0 connected to an Ethernet network.\nThe second interface, la,is actually a virtual loopback interface indicating that the host accepts packets with loopback address 127.0.0.0.");
//output of $ifconfig eth0 command
printf("\n\nMore information about the IP address and physical address of the server can be found by using the ifconfig command on the given interface (eth0).\n$ ifconfig eth0\neth0 Link encap:Ethernet HWaddr 00:BO:DO:DF:09:5D\ninet addr:153.18.17.11 Bcast: 153.18.31.255 Mask:255.255.240.0");
