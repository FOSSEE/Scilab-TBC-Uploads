//Find the loop inductance per phase
clear;
clc;
//soltion
//given
r=20;//mm//radius of the conductor
re=r*exp(-1/4);
d=7000;//mm//spacing
L=0.1*log((sqrt(3))*d/(2*re));
printf("Inductance per km(L)=%.4f mH\n",L);

