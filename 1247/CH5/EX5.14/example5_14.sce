clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.14
// Page 237
printf("Example 5.14, Page 237 \n \n");

// solution

// basis 1000 kg/h of condensate at the saturation temperature corresponding to 8 bar a
// using Appendix IV.2
H = 720.94 // kJ/kg
Hm = 419.06 // kJ/kg
x = poly(0,'x')
condensate = 1000-x
Hcondensate1 = 1000*H
Hcondensate2 = condensate*419.06
Ht = x*2676
p = Hcondensate2+Ht-Hcondensate1
printf(" The quqntity of flash steam produced = "+string(roots(p))+" kg/h.")
