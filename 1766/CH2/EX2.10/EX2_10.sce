clc;funcprot(0);//Example 2.10
//Initilisation of Variables
d=0.03;....//diameter of a srteel rod in m
Tb=190;....//temparature of wall in degrees celcius
Ta=30;....//temparature of air surrounding in degrees celcius
K=45;....//thermal conductivity of rod in W/m*k
h=19;....//Convective heat transfer coefficient in W/m^2*K
//calculations
P=%pi*d;....//circumference of rod in m
A=(%pi*d^2)/4;....//area of rod in m^2
Q=sqrt(h*P*K*A)*(Tb-Ta);.....//Heat transfer from the fin in W
disp(Q,"Heat loss from the fin in W:")
