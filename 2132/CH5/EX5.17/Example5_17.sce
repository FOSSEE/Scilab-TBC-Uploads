//Example 5.17
clc;
clear;
close;
format('v',4);
//Given data :
D1=200/1000;//meter
D2=100/1000;//meter
x=220/1000;//meter
g=9.81;//gravity constant
K=0.98;//Coeff. of meter
S=1;//sp. gravity
Sm=13.6;//sp. gravity of mercury
A1=%pi*D1^2/4;//m^2
A2=%pi*D2^2/4;//m^2
C=A1*sqrt(2*g)/sqrt((A1/A2)^2-1);//venturi constant
h=x*(Sm/S-1);//meter
Q=K*C*sqrt(h);//m^3/sec
Q=Q*1000;//litres/sec
disp(Q,"Rate of flow in litres/sec : ");
