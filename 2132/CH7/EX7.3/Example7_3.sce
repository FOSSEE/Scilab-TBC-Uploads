//Example 7.3
clc;
clear;
close;
format('v',7);
//Given data :
d=200/1000;//meter
Q=40*10^-3;//m^3/sec
A=%pi*d^2/4;//m^2
vm=Q/A;//m/s
v=0.25*10^-4;//m^2/s
Rn=vm*d/v;//Reynolds no.
disp(Rn,"Reynolds number for flow  : ");
disp("This is turbulent flow because Rn no. is greater than 4000.");
disp(Rn/8,"New Reynolds number for flow  : ");
disp("This is laminar flow because Rn no. is less than 2000.");
