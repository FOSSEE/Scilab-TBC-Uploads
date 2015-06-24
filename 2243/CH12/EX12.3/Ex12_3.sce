clc();
clear;
//Given :
I0 = 0.1; // muA
kT = 0.026; // kT value at room temperature
//Forward bias of 0.1 V
// I = I0[exp(eV/kT) - 1]
//  since I = I0*(exp(0.1 eV/kT (eV))), both the eV's cancel each other , so it is only  I = I0*(exp(0.1/kT) - 1) while evaluating.
I = I0*(exp(0.1/kT) - 1) // in muA
printf("Current = %.2f muA ",I);
