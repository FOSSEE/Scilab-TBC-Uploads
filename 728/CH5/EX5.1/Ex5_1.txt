//Caption:Determine the minimum distance between two end plates
//Exa:5.1
clc;
clear;
close;
//Given: 
a=3;//in cm
c=3*10^10;//in cm/s
f=10*10^9;//in Hz
P_01=2.405;
d=%pi/sqrt(f^2*4*%pi^2/c^2-(P_01/a)^2);
disp(d,'Minimum distance (in cm) =');