// Exa 14.2
// To determine the upper bound of the throughput and the throughput with retransmissions due to errors.

clc;
clear all;

RTT=0.1; //Round trip-time in sec
MSS=536*8; //Maximum segment size in bits
p=0.01;// packet loss probability for the path
RTO=5*RTT; //Retransmission time out(from eqn 14.2 on page 450)

//solution
R=0.93*MSS/(RTT*sqrt(p));
RR=MSS/(RTT*sqrt(1.33*p)+RTO*p*(1+32*p^2)*min(1,3*sqrt(0.75*p)));
printf('The upper bound of the throughput is %.4f Mbps \n',R*10^-6);
printf(' The throughput with retransmission due to errors is %.4f Mbps \n',RR*10^-6);
