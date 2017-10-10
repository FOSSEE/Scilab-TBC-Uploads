// Exa 14.1
// To determine the minimum possible latency amd the minimum window size that achieves this latency.

clc;
clear all;

O=800*1000; //Object size(Bytes)
S=536*8;  //max Segment Size(in bits)
RTT=0.1; //Round trip-time in sec
R=1*10^6; //Transmission rate of the link from the server to the client in bps

//solution
Lmin=2*RTT+(O/R); //latency(msec)
// For minimum latency (S/R) +RTT -(W*S/R) = 0;Therefore
W=1+(RTT)/(S/R);
printf('The minimum possible latency is %d sec \n',Lmin);
printf(' The minimum window size is %.1f segments \n',W);
