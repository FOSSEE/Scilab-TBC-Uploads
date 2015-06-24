// Exa 5.6
clc;
clear;
close;
format('v',5)
// Given data
W1 = 1000;// in W
W2 = 550;// in W
phi = (atand( sqrt(3)*((W1-W2)/(W1+W2)) ));//in °
// power factor 
pf= cosd(phi);// lag
disp("The power factor of the load is : "+string(cosd(phi))+" lag.");
