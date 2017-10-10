// Exa 6.4
// To calculate capacity and spectral efﬁciency of a TDMA system.

clc;
clear all;

nb=0.9; //BW efficiency factor
u=2;  // Bit Efficiency with QPSK
Vf=1;  // Voice activity factor
BW=12.5; //in MHz
IR=16.2; // in kbps
N=19; //frequency reuse factor

//solution
Nu=nb*u*BW*1000/(Vf*IR*N);// number of channels (mobile users) per cell
Seff=int(Nu)*IR/(BW*1000);
printf('Capacity of system is %d mobile users per cell\n ',Nu);
printf('Spectral efficiency of TDMA system is %.3f bit/sec/Hz\n',Seff);
