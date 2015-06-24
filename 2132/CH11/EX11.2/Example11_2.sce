//Example 11.2
clc;
clear;
close;
format('v',5);
//Given data :
Cv=0.975;//Coeff of pilot tube
h=100/1000;//meter
g=9.81;//constant
Sm=13.6;//Sp. gravity
S=0.86;//gravity of turpinre
V=Cv*sqrt(2*g*h*(Sm/S-1));//m/s
disp(V,"Velocity in m/sec : ");
