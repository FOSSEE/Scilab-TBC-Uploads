clc; funcprot(0);
//Example 3.3  On Adiabatic Process

// Initialisation of variables
gma = 1.4;
rho_0 = 0.002378;
P1 = 2*2116.2;        // Pressure ion lb per sq ft    
P0 = 1*2116.2;        // Pressure ion lb per sq ft
T0 = 59+459.4;

// Calculations
rho1 = rho_0*(P1/P0)^(1/gma);
T1 =T0*(rho_0/rho1)*(P1/P0);

//Results 

disp(T1-459.4 , "(b)Temperature if air is compressed adiabatically to 2 atm (degree farenheit):",rho1, "(a)Density if air is compressed adiabatically to 2 atm (Slug per cu ft):");

