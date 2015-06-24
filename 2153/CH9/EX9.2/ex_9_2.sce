//Example 9.2 : the fracture strength and compare
clc;
clear;
close;
format('v',10)
//given data :
E=70*10^9; // in N/m^2
C=(4.2*10^-6)/2;// in m
gama=1.1; // in J/m^2
sigma=sqrt((2*E*gama)/(%pi*C));
disp(sigma,"fracture strength,sigma(N/m^2) = ")
