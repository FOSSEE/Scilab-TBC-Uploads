// Exa 5.12
clc;
clear;
close;
format('v',7)
// Given data
W1 = 20;// in kW
W2 = -5;// in kW
P = W1+W2;// in kW
disp(P,"The power in kW is : ")
phi = (atand( sqrt(3)*((W1-W2)/(W1+W2)) ));// in lag
// Power factor of the load
pf= cosd(phi)
disp(pf,"The power factor of the load is : ");
