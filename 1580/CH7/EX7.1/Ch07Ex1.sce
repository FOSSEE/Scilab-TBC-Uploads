// Scilab Code Ex7.1:  Page-7.23 (2004)
clc;clear;
C = 2e-6;    // Capacitance, farad
V = 1000;    // Applied Voltage, volt
W = C*V^2/2;    // Energy stored in capacitor, joule
er = 100;   //Electric permittivity
Co = C/er;  //  New Capacitance without dielectric, farad
Wo = Co*V^2/2;  //  New Energy without dielectric, farad
Wt = W-Wo;  // Net energy stored in capacitor, joules
printf("\nNet energy stored in capacitor = %3.2f joules", Wt);

// Result
// Net energy stored in capacitor = 0.99 joules 
