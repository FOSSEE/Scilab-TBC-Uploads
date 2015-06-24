////Example 7.19
clc;
clear;
close;
format('v',9);
//Given data :
g=9.81;//gravity constant
D=150/1000;//meter(Pipe diameter)
Q=40;//litres/sec(rate of discharge)
l=500;//meter(valve distance)
T=0.5;//second
v=Q/1000/(%pi/4*D^2);//m/s(velocity of flow)
pi=1000/g*(l*v/T);//kg/m^2
disp(pi,"Increase in pressure intensity(kg/m^2)");
