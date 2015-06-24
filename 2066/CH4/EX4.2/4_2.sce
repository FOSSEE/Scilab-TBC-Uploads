clc
clear
//Initialization of variables
g=32.2 //ft/s^2
v1=3 //ft/s
z1=1.5 //ft
rho=1.5 //g/cc
z2=0
v2=30 //ft/s
//calculations
dp= rho*(v2^2 /2 - g*z1 +g*z2 - v1^2 /2)
//results
printf("pressure difference = %.1f lb/ft^2",dp)
