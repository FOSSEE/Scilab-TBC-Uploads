
clc
//initialisation of variables
P=14.70//lbf/in^2
T=90 //F
P1=70 //per cent
V=2000 //ft^3
p=0.6982//ft/lbm
Fhi=0.70//lbf/in^2
v1=550//ft/lbm
g=144//ft
q=53.34//lbm
f=85.7
//CALCULATIONS
v=Fhi*p//lbf/in^2
Pa=P-Pv//lbf/in^2
umga=0.622*(Pv/Pa)//lbf/in^2
Ma=(Pa*g*V)/(q*v1)//lbm
Mv=umga*Ma//lbm
mv=(Pv*g*V)/(f*v1)//lbm
//RESULTS
printf('The humidity ratio dew point mass of air and mass of vapor=% f lbm',mv)
