clc();
clear;
// To calculate the Fermi distribution function
// given that E-Ef = kT
// fermi function FpE = 1/(1+exp((E-Ef)/kT)
// therefore FpE = 1/(1+exp(kT/kT));
// FpE = 1/(1+exp(1))
FpE=1/(1+exp(1));
printf("fermi function is %f",FpE);
//the presence of electron at that energy level is not certain
