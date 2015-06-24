// Scilab Code Ex9.17: Mobility and no of Charge carrier : Page-9.48 ; (2004)
clc;clear;
RH = 3.66e-4;  // Hall Coefficient, metrcube/C
e = 1.6e-19;    //  Electronic charge, C
rho = 8.93e-3;  // Resistivity of sample, ohm meter 
n = 1/(RH*e);   // Number of charge carrier, per metre cube
mu_e = RH/rho;    //  Mobility of electron, m^2 per volt per sec
printf("\nNumber of charge carrier = %3.3e per metre cube", n);
printf("\nMobility of electron = %4.5f squaremetre per volt per sec", mu_e);

//Results
//  Number of charge carrier = 1.708e+22 per metre cube
//  Mobility of electron = 0.04099 m^2 per volt per sec 
