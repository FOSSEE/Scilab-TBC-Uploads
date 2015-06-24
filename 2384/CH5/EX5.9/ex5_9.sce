// Exa 5.9
clc;
clear;
close;
format('v',6)
// Given data
W1 = 300;// in kW
W2 = 100;// in kW
V_L= 2000;// in V
Eta= 90/100;
P = W1+W2;// in kW
disp(P,"The power input in kW is");
// tan(phi) = sqrt(3)*((W1-W2)/(W1+W2));
phi = atand(sqrt(3)*((W1-W2)/(W1+W2)));
pf = cosd(phi);// power factor
disp(pf,"The power factor is");
// P = sqrt(3)*V_L*I_L*cosd(phi);
I_L = (P*10^3)/(sqrt(3)*V_L*pf);// in A
disp(I_L,"The line current in A is");
output = P*Eta;// in kW
disp(output,"The power output in kW is");
