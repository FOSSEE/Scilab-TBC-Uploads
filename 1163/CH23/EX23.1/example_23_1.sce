clear;
clc;
disp("--------------Example 23.1----------------")
// display the example
printf("In UNIX, the well-known ports are stored in a file called fetcfservices. Each line in this file gives\nthe name of the server and the well-known port number.The following shows the port for FTP. Note that FTP can use port 21 with either UDP or TCP.\n\n$grep   ftp  /etc/services\nftp     21/tcp\nftp     21/udp");
printf("\n\nSNMP uses two port numbers (161 and 162), each for a different purpose.\n\n$grep snmp /etc/services\nsnmp            161/tcp            #Simple Net Mgmt Proto\nsnmp            161/udp            #Simple Net Mgmt Proto\nsnmptrap        162/udp            #Traps for SNMP");
