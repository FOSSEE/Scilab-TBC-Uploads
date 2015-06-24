clear;
clc;
funcprot(0);

//given data
alpha1 = 22;//inlet flow angle in deg
M1 = 0.3;//inlet Mach number
M2 = 0.93;//exit Mach number
alpha2 = 61.4;//exit flow angle in deg
Q1 = 0.6295;//Q(M1) from compressible flow tables
Q2 = 1.2756;//Q(M2) from compressible flow tables
gamma = 1.333;
Z = 0.6;

//Calculations
p02_p01 = (Q1/Q2)*(cos(alpha1*%pi/180)/cos(alpha2*%pi/180));
p01_p2 = (1+0.5*(gamma-1)*M2)^(gamma/(gamma-1)) *(1/p02_p01);
YP = (1-(p02_p01))/(1-(1/p01_p2));
K1 = M1/sqrt((1+0.5*(gamma-1)*(M1^2))/(gamma-1));
K2 = M2/sqrt((1+0.5*(gamma-1)*(M2^2))/(gamma-1));
s_b = ((1-(1/p01_p2))*Z)/(Q1*(K1*sin(alpha1*%pi/180)+K2*sin(alpha2*%pi/180))*cos(alpha1*%pi/180));

//Results
printf('The ratio of inlet stagnation pressure to exit static pressure = %.3f',p01_p2);
printf('\n The cascade stagnation pressure loss coefficient = %.4f',YP);
printf('\n The pitch to axial chord ratio for the blades = %.3f',s_b);

//there are errors in the answers given in textbook
