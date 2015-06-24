clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.25
// Page 257
printf("Example 5.25, Page 257 \n \n");

// solution

// basis 100 kmol/h of benzene feed rate
Cl2 = .4*100
HClp = 40
Benzenecon = 37
MCBp = 100*.37*.9189
DCBp = Benzenecon-MCBp
unreactBenzene = 100-Benzenecon
Nt = HClp + MCBp + DCBp + unreactBenzene
// using eq      xi = Ni/(L(1-K1)+NtKi)  and sigma xi = 1
L = 89.669  // kmol/h
V = Nt - L
printf(" Liquid product stream = "+string(L)+" kmol/h \n Vapor product stream = "+string(V)+" kmol/h")
