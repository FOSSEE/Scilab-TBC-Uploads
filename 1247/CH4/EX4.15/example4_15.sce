clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.15
// Page 143
printf("Example 4.15, Page 143 \n \n");

// solution

// basis = 1.12 M63 O2 at NTP
m1 = 1.12*1000*32/22.4 //[g] O2
m2 = m1/8 // g eq  O2
//at cathode : Cu++ +2e = Cu
//at anode : SO4-- - 2e = SO4
eqwtCu = 63.5/2
depositedCu = eqwtCu*m2
E = (1130*18000)/96485//faradays  Total energy passed to cell
libCu = (1130*18000*eqwtCu)/96485 //[g]  theoritical liberation of Cu
eff = (depositedCu/libCu)*100 // current efficiency
printf("(a) \n \n Amount of Cu lberated = "+string(libCu)+" \n \n \n(b) \n \n Current efficiency of the cell = "+string(eff)+" percent.")
