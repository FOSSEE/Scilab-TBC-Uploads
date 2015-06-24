//Example 12.1.b // percentage
clc;
clear;
close;
//given data :
Gf=2; // gauge factor
a=100; // stress in MN/m^2
E=200; // modulus of elasticity in GN/m^2
S=(a*10^6)/(E*10^9);
R=Gf*S;
P=R*100;
disp(P,"percentange change in resistance,P(%) = ")
