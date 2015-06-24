// Exa 2.2
clc;
clear;
close;
format('v',6)
// Given data
Rf = 10;// in ohm
R_L = 1;// in k ohm
R_L = R_L * 10^3;// in ohm
Vi = 230;// in V
Vm = Vi*sqrt(2);
//I_DC = Im/%pi;
I_DC = Vm/((R_L+Rf)*%pi);// in A
Irms = Vm/((R_L+Rf)*2);// in A
// The input ac power 
P_iAC = (Irms^2)*(Rf+R_L);// in W 
disp(P_iAC,"The input ac power in W is");
// The output ac power 
P_ODC = (I_DC^2)*R_L;// in W
disp(P_ODC,"The output ac power in W is");
// The efficiency 
Eta = (P_ODC/P_iAC)*100;// in %
disp(Eta,"The efficiency in % is");
// The percentage regulation 
R = (Rf/R_L)*100;// in %
disp(R,"The percentage regulation in % is");

// Note: The calculated value of input a.c. power in the book is wrong.
