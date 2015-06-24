// Scilab Code Ex9.1:  Page-9.24 ; (2004)
clc;clear;
ni = 2.37e+19;  // Carrier concentration at room temperature
mu_e = 0.38;    //  mobility of electron; m^2V^-1s^-1
e = 1.6e-19;    //  electronic charge, C
mu_h = 0.18;    //  mobility of holes; m^2V^-1s^-1
sigma = ni*e*(mu_e+mu_h);  // conductivity, mho.m^-1
rho = 1/sigma;  //  Resistivity in Ge, ohm.m
printf("\nConductivity in Ge = %4.2f mho.per m", sigma);
printf("\nResistivity in Ge = %5.3f ohm.m", rho);

//Results
//  Conductivity in Ge = 2.12 mho.per m
//  Resistivity in Ge = 0.471 ohm.m  
