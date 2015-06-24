clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.34
// Page 272
printf("Example 5.34, Page 272 \n \n");

// solution

Hr = -480-285.83+277.2+484.2  // kJ/mol
Hrt1 = Hr*1000 + [146.89+75.76-119.55-129.70]*75  // kJ/kmol 
a = 4.2905+50.845-100.92-155.48
b = 934.378+213.08+111.8386+326.5951
c = -2640-631.398-498.54-744.199
d = 3342.58+648.746
Hro = Hr*1000+a*(-298.15)+b*10^-3*(-298.15^2)/2+c*10^-6*(-298.15^3)/3+d*10^-9*(-298.15^4)/4
T = 373.15
Hrt = Hro+a*T+792.949*10^-3*T^2-1504.712*10^-6*T^3+997.832*10^-9*T^4
printf(" Heat of reaction at 373 K is "+string(Hrt)+" kJ/kmol reactant.")
