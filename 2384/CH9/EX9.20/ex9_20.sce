// Exa 9.20
clc;
clear;
close;
format('v',6)
// Given data
V1 = 250;// in V
V2 = 500;// in V
Pcu = 100;// in W
Pi = 80;// in W
V = V2;// in V
A = 12;// in A
phi= acosd(0.85);// in °
// The efficiency of the transformer 
Eta = ((V*A*cosd(phi))/( V*A*cosd(phi) + Pi+Pcu ))*100;// in %
disp(Eta,"The efficiency of the transformer in % is");
