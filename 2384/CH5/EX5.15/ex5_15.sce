// Exa 5.15
clc;
clear;
close;
format('v',8)
// Given data
P = 30;// in kW
pf = 0.7;
// cosd(phi) = pf;
phi = acosd(pf);// in degree
// P = sqrt(3)*V_L*I_L*cosd(phi);
theta = 30;// in degree
V_LI_L = P/(sqrt(3)*cosd(phi));
W1 = V_LI_L*cosd(theta-phi);// in kW
disp(W1,"The reading of first wattmeter in kW is");
W2 = V_LI_L*cosd(theta+phi);// in kW
disp(W2,"The reading of second wattmeter in kW is");
