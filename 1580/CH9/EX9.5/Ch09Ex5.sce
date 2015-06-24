// Scilab Code Ex9.5: Page-9.26 ; (2004)
clc;clear;
ni = 2.5e+19;  // Carrier concentration at room temperature
mu_e = 0.39;    //  Mobility of electron; m^2V^-1s^-1
e = 1.6e-19;    //  Electronic charge, C
l = 1e-2;   //  length of Ge rod, m
w = 1e-3;   // width of Ge rod,m
t = 1e-3;   //  thickness of Ge rod, m
A = w*t;    // Area of Ge rod, meter square 
mu_h = 0.19;    //  Mobility of holes, m^2V^-1s^-1
sigma = ni*e*(mu_e+mu_h);  // Conductivity, mho.m^-1
R = l/(sigma*A);  //  Resistivity in Ge, ohm.m
printf("\nResistance of Ge rod = %4.2e ohm", R);

//Results
//  Resistance of Ge rod = 4.31e+03 ohm 
