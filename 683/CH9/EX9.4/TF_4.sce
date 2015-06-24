// sum 9-4
clc;
clear;
d=20;
t=4;
Lg=84;
Ad=%pi*d^2/4;
Eb=205*10^3;
Ed=105*10^3;
kb=Ad*Eb/Lg;
lg=80;
x=5*(lg+(0.5*d))/(lg+(2.5*d));
kp=%pi*Ed*d/(2*log(x));
At=245;
sigb=105;
Pe=20*10^3;
Pb=Pe*kb/(kb+kp);
sigad=Pb/At;
finalst=sigb+sigad;

  // printing data in scilab o/p window
  printf("final stress is %0.2f N/mm^2      ",finalst);