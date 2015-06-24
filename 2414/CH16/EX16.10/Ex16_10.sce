clc;
close();
clear();
//page no 530
//prob no. 16.10
c=3*10^8;    //speed of light in m/s
fp=2*10^3;   //Hz
T=1/fp     //s
dmax=c*T/2       //in m
mprintf('(a) d max=%.0f Km \n',dmax*10^-3);
tau=6*10^-6;   //s
dmin=c*tau/2   //m
mprintf('(b) d min=%.0f m ',dmin);
