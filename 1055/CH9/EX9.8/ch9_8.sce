//To determine the ratio of sheath loss to core loss of the cable
clear
clc;
R=2*.1625;
Rs=2*2.14;
M=314;
w=6.268*10^-4;
r=Rs*M*M*w*w/(R*((Rs^2)+(M*M*w*w)));
mprintf("ratio=%.4f \n",r);
