// Example16_9_pg617.sce
// Effect of phase control
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 617


clear; clc; close;

// Given data

phi = 20;
alpha1 = 30;
alpha2 = 0;

// Calculations

ans1 = (cos(phi*%pi/(180*2))*cos(phi*%pi/(180*2) + alpha1*%pi/180)*100);
ans2 = round(cos(phi*%pi/(180*2))*cos(phi*%pi/(180*2) + alpha2*%pi/180)*100);
Effect = (ans1/ans2)*100;

printf("\n\nEffect of phase control here is to reduce the dc voltage to %0.2f %% of the value it would have in the absence of phase control\n", Effect);

// Result
// Effect of phase control here is to reduce the dc voltage to 77.77 % of the value it would have in the absence of phase control
