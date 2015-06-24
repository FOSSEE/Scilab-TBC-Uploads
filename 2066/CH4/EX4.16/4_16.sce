clc
clear
//Initialization of variables
q=240 //ft^3/sec/ft
v1=60 //ft/s
gam=62.4 
rho=1.94 //slug/ft^3
g=32.2 //ft/s^2
//calculations
y1=q/v1
v2=8.6 //ft/s
y2=28 //ft
hl= (y1+ v1^2 /(2*g)) - (y2+ v2^2 /(2*g))
hpp=hl*q*gam/550
//results
printf("Downstream depth = %.1f ft",y2)
printf("\n Horsepower dissipation = %d hp per foot width",hpp)
