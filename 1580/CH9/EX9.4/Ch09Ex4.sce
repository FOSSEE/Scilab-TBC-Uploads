// Scilab Code Ex9.4:  Page-9.26 ; (2004)
clc;clear;
ni = 2.4e+19;  // Carrier concentration at room temperature
mu_e = 0.39;    //  Mobility of electron; m^2V^-1s^-1
e = 1.6e-19;    //  Electronic charge, C
mu_h = 0.19;    //  Mobility of holes, m^2V^-1s^-1
sigma = ni*e*(mu_e+mu_h);  // Conductivity, mho.m^-1
rho = 1/sigma;  //  Resistivity in Ge, ohm.m
printf("\nConductivity in Ge = %4.4f mho.per m", sigma);
printf("\nResistivity in Ge = %5.3f ohm.m", rho);


//Results
//  Conductivity in Ge = 2.2272 mho.per m
//  Resistivity in Ge = 0.449 ohm.m 
