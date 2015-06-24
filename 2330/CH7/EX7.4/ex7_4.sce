// Example 7.4
format('v',6)
clc;
clear;
close;
// given data
R_E= 430;// in Ω
R_L= 100;// in Ω
R1= 10*10^3;// in Ω
R2= 10*10^3;// in Ω
bita= 200;
r_e= 2.5;// in Ω
// The load resistance
r_L= R_E*R_L/(R_E+R_L);// in Ω
// The power gain 
G= bita*r_L/(r_L+r_e);
disp(G,"The power gain is : ")
