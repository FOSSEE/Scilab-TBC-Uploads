clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.33
// Page 272
printf("Example 5.33, Page 272 \n \n");

// solution

// basis 1 kmol of SO2 reacted
a = 22.036-24.771-.5*(26.026)
b = (121.624-62.948-.5*11.755)
c = (-91.876+44.258-.5*(-2.343))
d = (24.369-11.122-.5*(-.562))
Hr = -395720+296810  // kJ/kmol
Hro = Hr-a*298.15-b*10^-3*298.15^2/2-c*10^-6*298.15^3/3-d*10^-9*298.15^4/4
T = 778.15
Hrt = -Hro-15.748*T+26.4*10^-3*T^2-15.48*10^-6*T^3+3.382*10^-9*T^4
printf(" Heat of reaction at 775K is "+string(Hrt)+" kJ/kmol.")
