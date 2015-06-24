
clc
//initialisation of variables
Ve=100//ft/sec
P=50 //lbf/in^2
Vi=20 //ft/sec
v=0.01608 //ft^3/lbm
g=32.17//lbm-ft/lbf-sec^2
Pe=90//lbf/in^2
h=778 //ft-lbf/Btu
T=540//f
t=144//ft
//CALCULATIONS
P1=((Ve^2)-(Vi^2))/(v*2*g*t)//lbf/in^2
Ps=P+P1//lbf/in^2
he=((Ve^2)-(Vi^2))/(2*g*h)//Btu/lbm
U=he-v*(Pe-P)*t/h //Btu/lbm
S=U/T//Btu/lbm-R
//RESULTS
printf('The increase in enthalpy internal energy and entropy =% f Btu/lbm-R',S)
