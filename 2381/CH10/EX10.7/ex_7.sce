//Example 7 // Velocity and Young modulus
clc;
clear;
close;
//given data :
n=2600;// in Hz
l=1;// in m
p=7.8*10^3;// kg/m^3
v=2*n*l;
disp(v,"The velocity,v(m/s) = ")
Y=v^2*p;
disp(Y,"Youngs modulus,Y(N/m^2) = ")
