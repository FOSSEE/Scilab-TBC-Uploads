clc;funcprot(0);//Example 1.2
//Initilisation of Variables
A=2;...........//Area of ironplate in m^2
Q=100*10^3;.........//Conduction in W
delt=70;.........//Temparature diffrence in degree celsius
L=0.05;............//Thickness of plate in m
//Calculations
K=(Q*L)/(A*delt);...........//Thermal conductivity in W/(m*K)
disp(K,"Thermal conductivity in W/(m*K):")
