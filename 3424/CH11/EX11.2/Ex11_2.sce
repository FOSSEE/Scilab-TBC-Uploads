clc
//Initialization of variables
w = 2*%pi*1750/60 // rad/s
r2 = 7/12 //ft
b2 = 2/12 //ft
a = 23 // degrees
Q = 1400 //gpm
g = 32.2 //ft/s^2
V01 = 0 //ft/s
d = 1.94 // s;ugs/ft^3
// Calculations
U2 = r2*w //ft/s
Vr2 = Q/(2*%pi*r2*b2*7.48*60)
V02 = U2 - Vr2*cotd(a)
hL = U2*V02/g //ft
hL1 = U2^2/(g)  - U2*Vr2*cotd(a)/(g)
Ws = d*Q*U2*V02/(7.48*60*550)
// Results
printf("the tangential velocity component at the exit is %.1f ft/s",V02)
printf(" \n the ideal head rise is %.f ft",hL)
printf(" \n the power transferred to the fluid is %.f hp",Ws)
