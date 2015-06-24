clc;funcprot(0);//Example 1.10
//Initilisation of Variables
d=0.1;........//diameter of a bulb in m
Q=100;.......//Heat transfer in W
h=65;........//convection heat transfer coefficient in W/(m^2*degree celsius)
Ta=35;.......//Atmospheric temparature in degree celsius
//Calculations
A=(%pi*d^2);......//area in m^2
Ts=Ta+(Q/(A*h));......//Surface tempature in degree celsius
disp(A,"area in m^2:")
disp(Ts,"Surface tempature in degree celsius:")
