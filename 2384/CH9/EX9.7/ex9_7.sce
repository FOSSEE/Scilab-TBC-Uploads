// Exa 9.7
clc;
clear;
close;
format('v',6)
// Given data
Rating = 150000;// in VA
phi= acosd(0.8);// in °
Pcu = 1600;// in W
Pi = 1400;// in W
n = 1/4;
// Total loss of 25% load
totalloss = Pi + (n^2)*Pcu;// in W
// efficiency of transformer of 25% load
Eta = n*Rating*cosd(phi)/(n*Rating*cosd(phi)+Pi+n^2*Pcu)*100;// in %
disp(Eta,"The efficiency in % is");

