
clc
//initialization of variables
D1 = 3.0*10^-7 // cm^2/sec
H1 = 0.18 // mol/cc-atm
D2 = 1.4*10^-6 // cm^2/sec
H2 = 2.2*10^-3 // mol/cc-atm
H11 = 13 // atm-cc/mol
H21 = 0.6 // atm-cc/mol
//Calculations
Beta = (D1*H1/(D2*H2))*(H11/H21)// Membrane selectivity
//Results
printf("The membrane selectivity is %.f",Beta)
