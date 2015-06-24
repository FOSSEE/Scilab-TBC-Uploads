//Calculate the sag 
clear
clc;
sf=5;//Factor of safety
d=.95;// conductor dia(cm)
Ws=4250/sf;// working stress(kg/cm_2)
A=%pi*(d^2)/4;// area (cm_2)
Wp=40*d*(10^-2);//wind pressure (kg/cm)
W=sqrt((.65^2) +(.38^2));// Total effective weight(kg/m)
T=850*A;// working tension (kg)
c=T/W;
l=160;
d=l^2/(8*800);
mprintf("sag,d=%.0f metres\n",d);
