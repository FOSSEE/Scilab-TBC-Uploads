//Find Impurity concentration 
//Ex:15.7
clc;
clear;
close;
d=1*10^-3;//diameter in m
a=3.14*(d/2)^2;//area of cross section of rod in sq m
r=100;//in ohm
l=10*10^-3;//in m
p=a*r/l;//in ohm-m
c=1/p;//conductivity
e=1.602*10^-19;//charge of electron in C
u_h=0.19;//mobility of holes in sqm/Vsec
n_h=c/(e*u_h);
disp(n_h,"Impurity concentration in rod (in per cubic m) = ");