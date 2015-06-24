clc;clear;
//Example 2.19

//constants used
e=.95;//Emissivity
tc=5.67*10^-8;//thermal conductivity in W/m^2 K^4

//given values
h=6;
A=1.6;
Ts=29;
Tf=20;

//calculation
//convection rate
Q1=h*A*(Ts-Tf);
//radiation rate
Q2=e*tc*A*((Ts+273)^4-(Tf+273)^4)
Qt=Q1+Q2;
disp(Qt,'the total rate of heat transfer in W')
