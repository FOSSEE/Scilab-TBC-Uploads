//Example 2.6.5 page 2.35

clc;
clear;

L= 5; //in KM
n1= 1.5;
del= 0.01;
c= 3*10^8; // in m/s
delta_t = (L*n1*del)/c;
delta_t=delta_t*10^12; //convertin to nano secs...
printf("The delay difference is %.1f ns",delta_t);
sigma= L*n1*del/(2*sqrt(3)*c);
sigma=sigma*10^12; //convertin to nano secs...
printf("\n\nThe r.m.s pulse broadening is %.2f ns",sigma);
B= 0.2/sigma*1000; //in Mz
printf("\n\nThe maximum bit rate is %.2f MBits/sec",B);
BLP = B*5;
printf("\n\nThe Bandwidth-Length is %.2f MHz.Km",BLP);
