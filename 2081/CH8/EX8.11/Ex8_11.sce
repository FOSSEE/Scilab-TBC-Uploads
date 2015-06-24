TDR=1*10^6
G=0.5
SmaxALOHA=G*%e^(-2*G)*TDR// throughput
printf('\nmax. throughput of ALOHA with large no.of subscibers with transmission rate of 1Mbps is= %.f kbps',SmaxALOHA*10^(-3))

Stdma=100/100*TDR
printf('\nthroughput of a TDMA network with transmission rate of 1Mbps is= %.f Mbps',Stdma*10^(-6));

Saloha=TDR
printf('\nthroughput of ALOHA with 1 subsciber with transmission rate of 1Mbps= %.f Mbps',Saloha*10^(-6));
