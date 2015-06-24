// Scilab code Exa7.3.1: To calculate the  pulse height of ionising particle :P.no. 308 (2011)
  E = 5.48e+06; // Energy of alpha particle, eV
  C = 50e-012; // Capacitance of the chamber, F
  R = 10^6; // Resistance, ohm
  E_p = 35; // Energy required to produced an ion pair, eV
  n = E/E_p; // Number of ion pair produced
    e = 1.6e-019; // Charge of an electron, C
  V =( n*e)/C; // Pulse height, V
    I = V/R; // current produced, A
 printf("\n The pulse height  =  %4.3e V \n Current produced  = %5.3e A", V,I) 
// Result
// The pulse height    =  5.010e-004 V 
 //Current produced   = 5.010e-010 A
