// Exa 8.1
clc;
clear;
close;
// Given data
C= 85;// in %
H= 12.5;// in %
H1 = 35000;// heat liberated by carbon in kJ
H2 = 143000;// heat liberated by hydrogen in kJ
HCV = (C*H1+H*H2)/100;// Higher calorific value in kJ/kg
disp(HCV,"Higher calorific value in kJ/kg is");
ms = 9;
LCV= HCV -(ms*H*2442)/100 ;// Lower calorific value in kJ/kg
disp(LCV,"Lower calorific value in kJ/kg is");

// Note: The calculated value in the book is not accurate
