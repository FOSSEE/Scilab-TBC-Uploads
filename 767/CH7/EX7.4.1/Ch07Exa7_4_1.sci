// Scilab code Exa7.4.1: To calculate the charge flow in a counter and height of voltage pulses :P.no. 310 (2011)
 E_p = 30; // Energy required to produced an ion pair, eV
 M = 1000; // Multiplication factor 
    e = 1.6e-019; // Charge of an electron, C
    t = 10^-3; // Time, s
    R = 10^5; // Resistance, ohm
 E_k = 20*10^6; // Kinetic energy of the proton, eV
 n = E_k/E_p; // Number of ion pairs produced
 n_a = n*M; // Number of ion-pair after multiplication
 Q = n_a*e; // Charge carried by these ion, C 
  I = Q/t; //  The current through 100-ohm resistance, A
  A = I*R; // ,The amplitude of voltage pulse, V 
 printf("\n The current through 100-ohm resistance    = %6.4e A \n The amplitude of voltage pulse   = %6.4e V ", I, A)
// Result
// The current through 100-ohm resistance    = 1.0667e-007 A 
// The amplitude of voltage pulse   = 1.0667e-002 V 










































































