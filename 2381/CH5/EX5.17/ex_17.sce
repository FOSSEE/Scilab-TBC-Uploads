//Example 17 // Pressure 
clc;
clear;
close;
//given data :
gama=1.4;
u=10^-3;// in m/s
v=340;// in m/s
P=10^5;// in N/m^2
p=gama*P*u/v;
disp(p,"The pressure,p(N/m^2) = ")
