//Example 5.16
clc;
clear;
close;
format('v',6);
//Given data :
D1=160/1000;//meter
D2=60/1000;//meter
g=9.81;//gravity constant
S=0.8;//sp. gravity
Sm=13.6;//sp. gravity of mercury
Q=0.05;//m^3/sec
K=0.98;//Coeff. of meter
A1=%pi*D1^2/4;//m^2
A2=%pi*D2^2/4;//m^2
C=A1*sqrt(2*g)/sqrt((A1/A2)^2-1);//venturi constant
h=(Q/K/C)^2;//meter
x=h/(Sm/S-1);//meter
disp(x,"Deflection in meter : ");
