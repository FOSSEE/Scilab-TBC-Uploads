// Scilab code Exa2.5 : : Page 90 (2011)
clc; clear;
m_0 = 3e-06;// Initial mass of the U-234, Kg
A = 6.022137e+026; //Avagadro's number, atoms
N_0 = m_0*A/234; // Initial number of atoms
T = 2.50e+05; // Half life, years
lambda = 0.693/T; // Disintegration constant
t = 150000; // Disintegration time, years
m = m_0*%e^(-lambda*t); // Mass after time t,Kg
activity = m*lambda/(365*24*60*60)*A/234; // Activity of U-234 after time t,dps
printf("\nThe activity of U-234 after %6d yrs = %5.3e disintegrations/sec", t, activity);

// Result
// The activity of U-234 after 150000 yrs = 4.478e+005 disintegrations/sec 