clear;
clc;

// Stoichiometry
// Chapter 7
// Combustion


// Example 7.9
// Page 465
printf("Example 7.9, Page 465 \n \n");

// solution

// using mean heat capacity data Table 7.21
// basis 100 kmol of dry flue gas
H7 = 1.0875*100*30.31*(423.15-298.15)
H71 = 3633.654*(423.15-298.15)
fi7 = H71*3900*.7671/162.2  // kJ/h
fi1 = 3.9*1000*26170    // kJ/h
// performing heat balance
Hsteamgen = 23546.07  
eff = Hsteamgen*100/fi1  // overall efficiency rate
printf("Overall efficiency rate = "+string(eff)+" percent.")
