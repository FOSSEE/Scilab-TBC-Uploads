// Exa 6.10
clc;
clear;
close;
// Given data
P=1000;// in ohm
Q=100;// in ohm
R=200;// in ohm
E=5;// in volt
Si1= 10;// in mm/miuA
Si2= 5;// in mm/miuA
Rg1= 400;// in ohm
Rg2= 100;// in ohm
S=R*Q/P;// in ohm
R_Th= R*S/(R+S)+ P*Q/(P+Q);// in ohm
// theta=Si1*E*S*del_R/((R+S)^2*(R_Th+Rg))
// RatioTheta21= theta2/theta1  
RatioTheta21= Si2/Si1*(R_Th+Rg1)/(R_Th+Rg2);
disp(RatioTheta21,"Ratio of deflection on two galvanometers ")
