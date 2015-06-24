// Exa 8.13
clc;
clear;
close;
//given data
R=100;// in kohm
R=R*10^3;// in ohm
C= 1;// in micro F
C=C*10^-6;// in F
V_REF= 5;// in volt
t=0.2;// time taken to read an unknown voltage in second
T=R*C;// in second
Vx= T/t*V_REF;// in volt
disp(Vx,"Unknown voltage in volt")
