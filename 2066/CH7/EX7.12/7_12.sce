clc
clear
//Initialization of variables
p1=25 //psig
p2=20 //psig
d1=18 //in
d2=12 //in
Cl=0.25
gam=62.4
g=32.2 //ft/s^2
//calculations
Vr=(d2/d1)^2
xv=(p2-p1)*144/gam
V22=xv/(-1-Cl+Vr^2) *2*g
V2=sqrt(V22)
Q=V2*%pi/4 *(d2/12)^2
//results
printf("Discharge = %.1f ft^3/s",Q)
