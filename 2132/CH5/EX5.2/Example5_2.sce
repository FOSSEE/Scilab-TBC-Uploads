//Example 5.2
clc;
clear;
close;
format('v',9);
//Given data :
v1=400*10^-3;//m/s
d1=300/1000;//meter
d2=450/1000;//meter
A1=%pi*d1^2/4;//m^2
A2=%pi*d2^2/4;//m^2
Q1=A1*v1*1000;//litres/sec(1m^3=1000litres)
disp(Q1,"Discharge of pipe in litres/sec : ");
v2=(Q1/1000)/A2;//m/s(Q1=Q2)
disp(v2,"Mean velocity of flow in m/s : ");
//Answer of discharge is wrong in the book.
