clc
clear
//Initialization of variables
mdot=8000 //lb/min
A1=1 //sq ft
A2=3/4 //sq ft
P2=50 //psi
P1=10 //psi
gam=62.4 //lb/ft^3
y2=-2 //ft
y1=-4 //ft
g=32.2 //ft/s^2
eff=0.7
//calculations
v=1/gam
cap=mdot/8.33
V1=mdot*v/A1 /60
V2=mdot*v/A2 /60
ht= (y2-y1) + (V2^2 -V1^2)/(2*g) + (P2-P1)*144/gam
Hhp=mdot*ht/33000
Php=Hhp/eff
//results
printf("Capacity = %d gpm",cap)
printf("\n Total dynamic head = %.1f ft",ht)
printf("\n Hydraulic hp = %.1f hp",Hhp)
printf("\n pump hp = %.1f hp",Php)
