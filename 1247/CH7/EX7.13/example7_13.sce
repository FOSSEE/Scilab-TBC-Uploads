clear;
clc;

// Stoichiometry
// Chapter 7
// Combustion


// Example 7.13
// Page 479
printf("Example 7.13, Page 479 \n \n");

// solution

// solving by alternate method on page 483
// basis 100 kmol of dry producer gas
// using tables 7.38 and 7.39
fi7 = 6469.67*(833.15-298.15)*(27650/2672)  // kJ/h
// heat output basis 1 kg of steam
// referring Appendix IV
H4 = 675.47-272.03  // kJ/kg
Ts = 463  // K
h = 806.69  // kJ/kg
lambdav = 1977.4  // kJ/kg
Hss = 2784.1  // kJ/kg at Ts
i = 3045.6  // kJ/kg
H6 = i-Hss
fi4 = H4*7100  // kJ/h
fi5 = (Hss-675.47)*7100  // kJ/h
fi6 = H6*7100  // kJ/h
recovery = fi4+fi5+fi6
BOILERcapacity = recovery*3600/2256.9  // kg/h
fi8 = 6125.47*(478.15-298.15)*(27650/2672)  // kJ/h
hloss = fi7-fi4-fi5-fi6-fi8  /// kJ/h
printf(" Heat Balance of Waste Heat Boiler \n \n \n                               kJ/h \n Heat Output \n Steam rising \n Economiser                    "+string(fi4)+" \n Steam generator               "+string(fi5)+" \n Super heater                  "+string(fi6)+" \n \n Heat loss in flue gases       "+string(fi8)+" \n Unaccounted heat loss         "+string(hloss)+"")
