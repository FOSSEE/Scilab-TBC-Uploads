//Problem 40.13: A capacitor is charged with 5 mC. If the energy stored is 625 mJ, determine (a) the voltage across the plates and (b) the capacitance of the capacitor.

//initializing the variables:
e0 = 8.85E-12; 
er = 1;
Q = 5E-3; // in Coulomb
W = 0.625; // in Joules

//calculation:
//voltage across the plates
V = 2*W/Q
//Capacitance C
C = Q/V

printf("\n\n Result \n\n")
printf("\n voltage across the plates is %.0f V",V)
printf("\n Capacitance C is %.2E F",C)