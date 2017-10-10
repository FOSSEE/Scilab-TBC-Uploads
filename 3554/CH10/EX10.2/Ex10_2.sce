// Exa 10.2

clc;
clear all;

// Given data

f1=2; // in MHz
f2=6; // in MHz
C1=500; // in pf
C2=50; // in pf

// Solution

disp("Given that f2=3*f1");
disp("Therefore by using equation 10.1");
disp(" 1/(2*%pi*sqrt(L*(C2+Cs)) = 3/(2*%pi*sqrt(L*(C1+Cs))");
disp("Therefore");
disp("C1+Cs=9(C2+Cs)");
//Therefore Cs is given as
Cs=(C1-9*C2)/8;// Self capacitance in pf
printf(' \nThe value of the self capacitance is = %.2f pf \n', Cs);


