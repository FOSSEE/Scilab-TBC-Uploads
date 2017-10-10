clc;
clear all;
disp("Maximum temperature")
L=1;//m thickness of slab
qg=500;// W/m^3
k=25;// W/(m*C)
t1=350;// degree C
// Maximum temperature at x =0
x=0;
Tmax=qg*L*L(1-(0.5*x)^2)/(2*k)+t1;// degree C
disp("degree C",Tmax,"Maximum temperature at x = 0, Tmax =")
