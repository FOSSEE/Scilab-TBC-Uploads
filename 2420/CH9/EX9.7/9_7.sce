clc
clear
//Initialization of variables
h=4 //in
den=13.6 //g/cc
Ar=1/9
A1=12 //sq in
gam=62.4 //lb/ft^3
g=32.2 //ft/s^2
//calculations
dh=(h*den-h)/12
Vr=1/Ar
V22=2*g*dh/(1-Ar^2)
V2=sqrt(V22)
A2=A1*Ar
v2=1/gam
ms=A2*V2/(v2*144)
//results
printf("Flow rate of water = %.1f lb/sec",ms)
