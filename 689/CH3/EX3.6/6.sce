clc; funcprot(0);
//Example 3.6 Bernoulli Equation for compressible flow

// Initialisation of variables
gma = 1.4;
P0 = 14.7;
rho = 0.002378;
V0= 500;
P1 = 13.5;

// Calculations
a0 = sqrt(gma*P/rho);
V1 =sqrt(V0^2 + 2*a0^2*(1-(P1/P0)^(1-1/gma))/(gma-1));

//Results 
disp(V1 , "Speed of sound when pressure is 13.5 lb per sq in  (in ft/sec):");
