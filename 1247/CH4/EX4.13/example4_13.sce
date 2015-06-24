clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.13
// Page 138
printf("Example 4.13, Page 138 \n \n");

// solution

m1 = 1200*1.2 //[kg] mass of reactants
pOH1 = 14-6 //pOH of reactants
pOH = 14-9 //pOH of final mass
// ROWs = 1/sigma(Wi/ROWsi)
//Ms = mass of .5% NaOH required
//ROWs = density of final solution

//ROWs = 1/{((m1*10^3*1)/(((m1*10^3+Ms)*1.2)+(Ms/((m1*10^3+Ms)*1.005))}    (i)
//balance of OH- ions
//1200*10^-8 +Ms*10^-1.15/(1.005*10^-5) = (1200*1.2*10^3+Ms)*10^-5/ROWs*10^-5      (ii)
//solving (i) and (ii)
Ms = 170.21 //g
ROWs = 1.2016 //[kg/l]
printf("Mass of 0.5 percnt NaOH required to be added to raise the pH = "+string(Ms)+"g.")





