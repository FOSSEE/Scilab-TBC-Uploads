//Example 5.13
clc;
clear;
close;
format('v',8);
//Given data :
D1byD2=1/0.7;
D1=320/1000;//meter
D2=320*0.7/1000;//meter
g=9.81;//gravity constant
Q=30.6/60;//m^3/sec
A1=%pi*D1^2/4;//m^2
A2=%pi*D2^2/4;//m^2
C=A1*sqrt(2*g)/sqrt((D1byD2)^4-1);
h=1.2;//meter of water
K=Q/C/sqrt(h);//Coeff. of meter
disp(K,"Coefficient of meter : ");
//Answer in the book is wrong.
