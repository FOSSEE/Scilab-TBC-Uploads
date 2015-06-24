//Example 9.1 : difference
clc;
clear;
close;
//given data :
E=200*10^9; // in N/m^2
C=(4*10^-6)/2;// in m
gama=1.48; // in J/m^2
sigma=sqrt((2*E*gama)/(%pi*C));
disp(sigma*10^-6,"fracture strength,sigma(MN/m^2) = ")
