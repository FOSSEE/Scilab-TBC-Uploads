//Example 5.15
clc;
clear;
close;
format('v',6);
//Given data :
D1=120/1000;//meter
D2=120*0.55/1000;//meter
g=9.81;//gravity constant
A1=%pi*D1^2/4;//m^2
A2=%pi*D2^2/4;//m^2
Q=30/1000;//m^3/sec
C=A1*sqrt(2*g)/sqrt((D1/D2)^4-1);//venturi constant
K=0.94;//Coeff. of meter
h=(Q/K/C)^2;//meter
Z1=0;//meter
Z2=0.3;//meter
S=0.79;//sp. gravity
w=1000*S;//kg/m^3
delta_p=(h+Z1-Z2)*w;//kg/m^2
delta_p=delta_p*g;//N/m^2
disp(delta_p,"Pressure difference in N/m^2 : ");
//answer is wrong in the book.
