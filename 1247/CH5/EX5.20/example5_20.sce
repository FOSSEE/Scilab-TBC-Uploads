clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.20
// Page 247
printf("Example 5.20, Page 247 \n \n");

// solution

// basis 200 kg/h of Sulphur firing
F = 200/32  // kmol/h
O2req = 6.25*1.1
airin = O2req/.21
N2in = airin-O2req
T1 = 1144.15
T2 = 463.15
fi = 788852.2 // kJ/h
H = 15*4.1868+1945.2
qm = fi*.9/2008  // kg/h
printf(" Amount of steam produced = "+string(qm)+" kg/h.")
