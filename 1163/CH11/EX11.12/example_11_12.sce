clear;
clc;
disp("--------------Example 11.12---------------")
// example explaination
printf("This example shows the steps and the phases followed by a network layer packet as it is transmitted through a PPP connection.\nFor simplicity, unidirectional movement of data from the user site to the system site is assumed (such as sending an e-mail through an ISP).\n\n");
printf("The first two frames show link establishment. Two options are chosen(not shown in the figure): using PAP for authentication and\nsuppressing the address control fields. Frames 3 and 4 are for authentication. Frames 5 and 6 establish the network layer connection using IPCP.\n\n");
printf("The next several frames show that some IP packets are encapsulated in the PPP frame. The system (receiver) may have been running\nseveral network layer protocols, but it knows that the incoming data must be delivered to the IP protocol because the NCP protocol\nused before the data transfer was IPCP.\n\n");
printf("After data transfer, the user then terminates the data link connection, which is acknowledged by the system.\nOf course the user or the system could have chosen to terminate the network layer IPCP and keep the data link layer running if it\nwanted to run another NCP protocol.")