//Find the loop inductance and reactance
clear;
clc;
//soltion
//given
r=(1.213*10^-2)/2;//m//radius of the conductor
d=1.25;//m//spacing
f=50;//Hz//freq
re=r*exp(-1/4);
L=4*10^-7*log(d/re);
Lkm=L*1000;
printf("Inductance per km(L)=%.2f*10^-4 H/Km\n",Lkm*10^4);
X=2*%pi*f*Lkm;
printf("Reactance(X)= %.1f ohm/km",X);
