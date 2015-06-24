clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.40
// Page 292
printf("Example 5.40, Page 292 \n \n");

// solution

// basis 4 kmol of HCl gas
O2req = 1  // kmol
O2spply = 1.35*1
N2 = 1.35*79/21
air = O2spply+N2
HClbrnt = .8*4
HCl = 4-HClbrnt
O2 = O2spply-.8
Cl2 = .8*2
H2O = .8*2
printf(" (a) \n \n Composition of dry product gas stream : \n Component           Dry product gas stream,kmol \n HCl                 "+string(HCl)+" \n O2                  "+string(O2)+" \n Cl2                 "+string(Cl2)+" \n H2O                 "+string(H2O)+" \n N2                  "+string(N2)+" \n \n \n (b) \n \n ")
H2 = 114.4*1000*.8
// H2 = intgr(from 298.15 to T){286.554+12.596*10^-3*T+63.246*10^-6*T^2-25.933*10^-9*T^3}dT
// solving it
T = 599.5  // K
printf(" Adiabatic reaction temperature of product gas stream = "+string(T)+" K.")
