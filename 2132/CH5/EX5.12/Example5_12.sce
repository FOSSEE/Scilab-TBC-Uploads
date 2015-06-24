//Example 5.12
clc;
clear;
close;
format('v',6);
//Given data :
D1=180/1000;//meter
D2=90/1000;//meter
g=9.81;//gravity constant
S=0.8;//sp. gravity of oil
Sm=13.6;//sp. gravity of mercury
x=300/1000;//meter
K=0.97;//coeff. of meter
A1=%pi*D1^2/4;//m^2
A2=%pi*D2^2/4;//m^2
C=A1*A2*sqrt(2*g)/sqrt(A1^2-A2^2)
h=x*(Sm/S-1);//meter of oil
Q=K*C*sqrt(h);//m^3/sec
Q=Q*1000;//litre/sec
disp(Q,"Discharge of oil in litres/sec : ");
