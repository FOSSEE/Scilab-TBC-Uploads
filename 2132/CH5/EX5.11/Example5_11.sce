//Example 5.11
clc;
clear;
close;
format('v',8);
//Given data :
slope=1/10;
Z1=0;//meter
Z2=40*slope;//meter
p1=1.5/10^-4;//kg/cm^2
v2=4.1;//m/s
D1=600/1000;//meter
D2=300/1000;//meter
A1=%pi*D1^2/4;//m^2
A2=%pi*D2^2/4;//m^2
v1=A2*v2/A1;//m/s
g=9.81;//constant
w=1000;//kg/m^3
p2=(p1/w+v1^2/2/g+Z1-v2^2/2/g-Z2)*w;//kg/m^2(by Bernolli's theorem)
p2=p2*10^-4;//kg/cm^2
Q1=A1*v1;//m^3/sec
Q1=Q1*1000;//litre/sec
disp(p2,"Pressure intensity at point Q in kg/cm^2 : ");        
disp(Q1,"Discharge of pipe in litres/sec : ");
//Answer in the book is not accurate. calculation for A1 & A2 is wrong.
