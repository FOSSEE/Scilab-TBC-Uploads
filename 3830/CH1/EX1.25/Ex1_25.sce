// Exa 1.25

clc;
clear;

// Given
 
// A 0-250 range milliAmmeter
Er = 2; // Percentage accuracy of Ammeter in terms of FSR
I = 150; // Measurement of Ammeter in mA
Ifsr = 250; // Full scale reading of milliAmmeter (mA)

// Solution

dV = Er/100 * Ifsr; // Error in FSR reading
Lr = 100*dV/I;
printf('The limiting error = %.2f percent \n',Lr);
