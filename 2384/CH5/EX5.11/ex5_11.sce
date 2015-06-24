// Exa 5.11
clc;
clear;
close;
format('v',6)
// Given data
Z_Ph= 8+6*%i;// in ohm
V_L= 400;// in V
V_Ph= V_L/sqrt(3);// in V
I_Ph= V_Ph/Z_Ph;// in A
I_L= I_Ph;// in A
phi= atand(imag(I_L),real(I_L));// in °
disp(abs(I_L),"The line current in A is : ")
// power factor
pf= cosd(phi);// lagging
disp("Power factor is : "+string(pf)+" lagging")
P= sqrt(3)*V_L*abs(I_L)*cosd(phi);// in W
disp(P,"The three phase power in W is : ")
S= sqrt(3)*V_L*abs(I_L);// in VA.
disp(S,"The three phase volt-amperes in VA is : ")
