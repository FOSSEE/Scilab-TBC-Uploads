clc;
clear all;
ar1 = 0.1258e-9; // Atomic radius in BCC state in meters
ar2 = 0.1292e-9; // Atomic radius in FCC state in meters
a1 = (4*ar1)/sqrt(3); //lattice constant for BCC
v1 = (a1^3)/2; // Volume occupied by 1 atom in BCC
a2 = (4*ar2)/sqrt(2); //lattice constant for FCC
v2 = (a2^3)/4; // Volume occupied by 1 atom in FCC
ch = ((v1-v2)/v1)*100; //Change in volume in percentage
disp('',ch,'Change in volume in percentage during structural changes is')
// Wrong answer in textbook...Checked in calculator
