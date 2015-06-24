//Find the loop inductance per phase
clear;
clc;
//soltion
//given
r=5;//mm//radius of the conductor
re=r*exp(-1/4);
d=3500;//mm//spacing
L=2*10^(-7)*log(d/re);
L_=L*10^6;
printf("Inductance per km(L)=%.4f*10^-6 H\n",L_);
printf("Lav=2*10^-7{log(dp/r)+1/3*log(2)}\n");
printf("Lav= L\n");
Z=(L/(2*10^-7)-1/3*log(2));
dp=re*exp(Z);
dp_=dp/1000;
printf("After soving above equation\n");
printf("Spacing between the conductors in the plane(dp)= %.3fm",dp_);
