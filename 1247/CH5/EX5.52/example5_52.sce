clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.52
// Page 306
printf("Example 5.52, Page 306 \n \n");

// solution

// basis 1000 kg of mixed acid
C11 = 2.45
H1 = -296.7+C11*(308.15-273.15)
C12 = 2.2
H2 = -87.8+C12*(308.15-273.15)
C13 = 1.45
H3 = -35.5+C13*(308.15-273.15)
C14 = 1.8
H4 = -148.9+C14*(308.15-273.15)
Hmix = 1000*H4-[76.3*H1+345.9*H2+577.7*H3]
printf(" Heat of mixing = "+string(Hmix)+" kJ.")
