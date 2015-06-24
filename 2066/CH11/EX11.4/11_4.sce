clc
clear
//Initialization of variables
S0=0.0009
n=0.018
w=20 //ft
d=0.5 //ft
Q=400 //ft^3/s
g=32.2 //ft/s^2
//calculations
y2=4 //ft
V2=Q/(w*y2)
Nf2=V2/sqrt(g*y2)
yr=0.5*(sqrt(1+ 8*Nf2^2) -1)
y1=yr*y2
L1=32.5
L2=37.1 
L3=51.4
L=L1+L2+L3
//results
printf("distance from vena contracta = %.1f ft and  %.2f ft",y2,y1)
printf("\n Total distance = %.1f ft",L)
