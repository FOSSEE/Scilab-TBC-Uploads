clc;funcprot(0);//Example 2.11
//Initilisation of Variables
L=0.2;....//length of the steel rod in m
d=0.02;....//diameter of steel rod in m
Ta=30;....//air surrounding temparature of rod in degrees celcius
Tb=300;...//surface tempature of the rod in degrees celcius
K=45;....//thermal conductivity of rod in W/m*k
h=30;....//Convective heat transfer coefficient in W/m^2*K
//calculations
P=%pi*d;....//circumference of rod in m
A=(%pi*d^2)/4;....//area of rod in m^2
m=sqrt((h*P)/(K*A));....//
Q=(sqrt(h*P*K*A))*((Tb-Ta)*tanh(m*L));.....//Heat transfer through fluid from the rod in W
disp(Q,"Heat transfer through fluid from the rod in W:")
