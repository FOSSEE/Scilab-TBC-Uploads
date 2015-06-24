// Exa 5.7
clc;
clear;
close;
format('v',6)
// Given data
W1 = 2000;// in W
W2 = 500;// in W
phi = (atand( sqrt(3)*((W1-W2)/(W1+W2)) ));// in lag
// power factor 
pf= cosd(phi);// lagging
disp("Part (i) : Power factor is : "+string(pf)+" lagging");
W2 = -W2;// in W
phi = (atand( sqrt(3)*((W1-W2)/(W1+W2)) ));// in lag
// power factor 
pf= cosd(phi);// lagging
disp("Part (ii) : Power factor is : "+string(pf)+" lagging");
