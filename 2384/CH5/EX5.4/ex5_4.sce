// Exa 5.4
clc;
clear;
close;
format('v',6)
// Given data
R = 5;// in ohm
L =0.02;// in H
V_L = 440;// in V
f = 50;// in Hz
X_L = 2*%pi*f*L;// in  ohm
Z_Ph = sqrt( (R^2)+(X_L^2) );// in ohm
V_Ph = V_L;// in V
I_Ph = V_Ph/Z_Ph;// in A
I_L = sqrt(3)*I_Ph;// in A
disp(I_L,"The line current in A is");
phi = acosd(R/Z_Ph);// in lag
P = sqrt(3)*V_L*I_L*cosd(phi);// in W
P= P*10^-3;// in kW
disp(P,"The total power absorbed in kW is");

// Note: To evaluate the value of P, the wrong value of I_L is putted , so the calculated value of P in the book is not correct
