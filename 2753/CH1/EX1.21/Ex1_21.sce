//Example 1.21: 
clc;
clear;
close;
//given data :
V=0.2;// in V
I=1;// in micro-A
R_dc=V*10^3/I;
R_ac=26/(I*10^3);
format('v',5)
disp(R_dc,"The static resistance,R_ac(k-ohm) = ")
format('v',6)
disp(R_ac,"the dynamic resistance,R_ac(ohm) = ")
