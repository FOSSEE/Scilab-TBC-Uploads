// Exa 5.5
clc;
clear;
close;
// Given data
epsilon= 12/(36*%pi*10^11);// in F/cm  (value of epsilon for silicon)
q= 1.6*10^-19;// in C
// C_T= epsilon*A/d , where d= 2*epsilon*Vi/(q*NA)^(/2)
// Hence    C_T/A= epsilon/d= sqrt(q*epsilon/2)*sqrt(NA/Vi)
// Let 
value = sqrt(q*epsilon/2);
disp("C_T= "+string(value*10^12)+" sqrt(NA/Vi) in pF/cm^2");
