clc;funcprot(0);//Example 1.5
//Initilisation of Variables
A=4.0;............//Area of a plane wall in m^2
K=9.4;............//Thermal conductivity  in W/(m*(degree celsius))
t1=140;..........//Temparature of wall on one side in degree celsius
t2=50;..........//Temparature of wall on opposite side in degree celsius
Q=30*10^3;..........//Heat transfer in W
//Calculations
T=Q/(K*A);.............//temparature gradient dT/dx in degree celsius/m
disp(T,"Temparature gradient dT/dx in degree celsius/m:")
