clc;funcprot(0);//Example 1.14
//Initilisation of Variables
d=0.05;............//diameter of cylinder rod in m
L=1;............//
T1=1200;.........//Temparature of furnace in K
T2=900;.........//Temparature of interior walls of furnace in K
s=5.67*10^-8;.......//Stefan-Boltzmannconstant
e=0.8;........//Surface emmissivity
//Calculation
A1=%pi*d*L;........//Radiation of heat transfer in W/m^2
Q=A1*e*s*(T1^4-T2^4);...........//Heat transfer in W
disp(Q/1000,"Heat transfer in kW:")
hr=(e*s*(T1^4-T2^4))/(T1-T2);.........//radiation heat transfer coefficient in W/(m^2*K)
disp(hr,"radiation heat transfer coefficient in W/(m^2*K):")
