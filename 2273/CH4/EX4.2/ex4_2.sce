//Find the loop inductance
clear;
clc;
//soltion
//given
r=(1*10^-2)/2;//m//radius of the conductor
d=2;//m//spacing
u=50//relative permeability of steel and copper
L=(1+4*log(d/r))*10^-7*1000;
LmH=L*1000;
printf("Inductance per km(L) copper conductor=%.3f mH\n",LmH);
Lr=(u+4*log(d/r))*10^-7*1000;
printf("Inductance per km(L) steel conductor=%.3f mH\n",Lr*1000);
