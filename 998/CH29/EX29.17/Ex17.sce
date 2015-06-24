//Ex:17
clc;
clear;
close;
a=0.4;// roll_off factor
m=1;// for BPSK
B=36*m;
r_s=B/(1+a);// max bit rate in Mbps
printf("The max bit rate=%f Mbit/sec",r_s);