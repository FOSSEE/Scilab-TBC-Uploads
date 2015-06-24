// Exa 2.1
clc;
clear;
close;
// Given data
p1= 2;// in bar
v1= 30;// in litre
T1= 27+273;// in K
T2= -3+273;// in K
v2= v1;// in litre
// Gas law  p1*v1/T1= p2*v2/T2
p2= p1*v1*T2/(T1*v2);// in bar
disp(p2,"The air pressure in the tyre in bar is :")
 
