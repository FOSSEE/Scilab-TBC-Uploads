clc;funcprot(0);//Example 9.14
//Initilisation of Variables
l=0.6;....//Length of steam pipe in m
d=0.2;...//Diameter of pipe in m
Tp=200+273;....//Surface Temparature of Steam pipe in degrees celcius
Tw=10+273;....//Temparature of wall in degrees celcius
e=0.8;....//Emissivity of pipe
R=5.67*10^-8;.....//Stefens boltsman constant 
//calculations
A=%pi*d*l;....//Area of pipe in m^2
Q=A*e*R*(Tp^4-Tw^4);.....//Rate of heat loss from pipe by radiation in W
disp(Q,"Rate of heat loss from pipe by radiation in W:")
