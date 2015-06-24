//Example 5.10
clc;
clear;
close;
format('v',8);
//Given data :
Q=200*10^-3;//m^3/s
D1=250/1000;//meter
D2=200/1000;//meter
A1=%pi*D1^2/4;//m^2
A2=%pi*D2^2/4;//m^2
v1=Q/A1;//m/s
v2=Q/A2;//m/s
Z1=2;//meter
Z2=8;//meter
g=9.81;//constant
w=1000;//kg/m^3
p1=w*(Z1-v1^2/2/g);//kg/m^2
p2=v1^2/2/g*w+p1+Z2*w-v2^2/2/g*w-4*w;//kg/m^2(by Bernolli's theorem)
p1=p1*g;//N/m^2
p2=p2*g;//N/m^2
disp(p1,"Pressure intensity at point P in N/m^2 : ");
disp(p2,"Pressure intensity at point Q in N/m^2 : ");        
//Answer in the book is not accurate.
