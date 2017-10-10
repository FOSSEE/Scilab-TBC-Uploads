// Calculating the inductance
clc;
disp('Example 16.2, Page No. = 16.6')
// Given Data
N = 25;// Number of turns
Ac = 1;// Cross sectional area of the core (in cm square)
u0 = 4*%pi*10^(-7);// Permeability of free space
ur = 200;// Relative permeability
lc = 15;// (in cm)
// Calculation of the inductance
L = u0*ur*Ac*10^(-4)*N^(2)/(lc*10^(-2))*10^(6);// Inductance (in micro H)
disp(L,'Inductance (micro H) =');
//in book answer is 105 micro H.  The answers vary due to round off error
