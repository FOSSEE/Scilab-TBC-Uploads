//Example 5.14
clc;
clear;
close;
format('v',5);
//Given data :
D1=320/1000;//meter
D2=224/1000;//meter
g=9.81;//gravity constant
Q=25000/1000/60;//m^3/sec
A1=%pi*D1^2/4;//m^2
A2=%pi*D2^2/4;//m^2
C=0.4984;//venturi constant
K=0.92;//Coeff. of meter
h=(Q/K/C)^2
S=1;//sp. gravity
Sm=13.6;//sp. gravity
x=h/(Sm/S-1);//meter of water
disp(x*1000,"Deflection in  manometer(mm) : ");
