//Example 5.18
clc;
clear;
close;
format('v',8);
//Given data :
D1=40/100;//meter
D2=15/100;//meter
x=25/100;//meter
g=9.81;//gravity constant
K=0.98;//Coeff. of meter
S=1;//sp. gravity
Sm=13.6;//sp. gravity of mercury
A1=%pi*D1^2/4;//m^2
A2=%pi*D2^2/4;//m^2
C=A1*A2*sqrt(2*g)/sqrt(A1^2-A2^2);//venturi constant
h=x*(Sm/S-1);//meter
Q=K*C*sqrt(h);//m^3/sec
Q=Q*1000*3600;//litres/hour
disp(Q,"Flow of water in litres/hour : ");
//Answer in the book is wrong.
