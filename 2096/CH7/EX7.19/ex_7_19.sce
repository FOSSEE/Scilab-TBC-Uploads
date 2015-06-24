//Example 7.18 // the longitudinal and hoop stress
clc;
clear;
close;
//given data :
ex=1540;
ey=-420;
A=110*10^-6; // in m^2
P=25*10^3; // load in N
ax=P/A;
by=0;
E=(ax/ex);
mu=(ey*E)/ax;
disp(E*10^-3,"modulus of elasticity,E(GN/m^2) = ")
disp(-mu,"poisson ratio,ey = " )
