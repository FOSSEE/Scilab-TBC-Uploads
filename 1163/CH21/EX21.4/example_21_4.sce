clear;
clc;
disp("--------------Example 21.4---------------")
// display the example
printf("The traceroute program is used to find the route from the computer voyager.deanza.edu to the server fhda.edu.\nThe following shows the result:\n\n");
printf("$ traceroute fbda.edu\ntraceroute to fbda.edu  (153.18.8.1),30 hops max, 38 byte packets\n1 Dcore.fhda.edu    (153.18.31.254)  0.995 ms  0.899 ms  0.878 ms\n2 Dbackup.fhda.edu  (153.18.251.4)   1.039 ms  1.064 ms  1.083 ms\n3 tiptoe.fhda.edu   (153.18.8.1)     1.797 ms  1.642 ms  1.757 ms\n\n");
printf("The unnumbered line after the command shows that the destination is 153.18.8.1. The TTL value is 30 hops.\nThe packet contains 38 bytes: 20 bytes of IP header, 8 bytes of UDP header, and 10 bytes of application data.\nThe application data are used by traceroute to keep track of the packets.\n\n");
printf("The first line shows the first router visited. The router is named Dcore.fhda.edu with IP address 153.18.31.254.\nThe first round-trip time was 0.995 ms, the second was 0.899 ms, and the third was 0.878 ms.\n\n");
printf("The second line shows the second router visited. The router is named Dbackup.fhda.edu with IP address 153.18.251.4.\nThe three round-trip times are also shown.\n\n");
printf("The third line shows the destination host. This is the destination host because there are no more lines.\nThe destination host is the server thda.edu, but it is named tiptoe.fhda.edu with the IP address 153.18.8.1.\nThe three round-trip times are also shown.")
