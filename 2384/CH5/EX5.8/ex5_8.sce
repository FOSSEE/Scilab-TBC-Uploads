// Exa 5.8
clc;
clear;
close;
format('v',6)
// Given data
W1 = 375;// in W
W2 = -50;// in W
// tan(phi) = sqrt(3)*((W1-W2)/(W1+W2));
phi = atand(sqrt(3)*((W1-W2)/(W1+W2)));// in degree
// power factor 
pf= cosd(phi);// lag
disp("The power factor is : "+string(pf)+" lag.");
