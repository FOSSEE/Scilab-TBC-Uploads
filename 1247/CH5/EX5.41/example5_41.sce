clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.41
// Page 294
printf("Example 5.41, Page 294 \n \n");

// solution

// 1 kmol of EB vapors entering the reactor at 811.15 K
// (from 811.15 to T1)intgr{-36.72+671.12*10^-3*T-422.02*10^-6*T^2+101.15*10^-9*T^3}dT = (from T1 to 978.15)intgr{487.38+1.19*10^-3*T+198.16*10^-6*T^2-68.21*10^-9*T^3}dT
// we get
T1 = 929.72  // K
To = 298.15
H1 = 493405  // kJ
EBr = .35
Styrenep = EBr*.9
Benzeneb = EBr*.03
Ethyleneb = Benzeneb
Cb = EBr*.01
Toulened = EBr*.06
Hr1 = 147.36-29.92  // kJ/mol EB
Hr2 = 82.93+52.5-29.92
Hr3 = -29.92
Hr4 = 50.17-74.52-147.36  // kJ/mol styrene
dHr = 1000*(Hr1*(Styrenep+Toulened)+Hr2*Benzeneb+Hr3*Cb+Hr4*Toulened)
H2 = H1-dHr
// H2 = (from To t0 T2)intgr{Comp2dT
// we get
T2 = 798.79  // K
printf(" Adiabatic reaction T at the outlet of the reactor is "+string(T2)+" K.")
