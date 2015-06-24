clear;
clc;

// Example: 12.14
// Page: 494

printf("Example: 12.14 - Page: 494\n\n");

// Solution

//*****Data******//
// Reaction: SO2(g) + (1/2)O2(g) -------> SO3(g)
// Moles in Feed:
nSO2_feed = 1;
nO2_feed = 0.5;
nAr_feed = 2;
P = 30;// [bar]
T = 900;// [K]
K = 6;
//*************//

// Let e be the degree of completion at equilibrium.
// nSO2_eqb = 1 - e;
// nO2_eqb = 0.5*(1 - e);
// nSO3_eqb = e;
// nAr_eqb = 2;
// Total moles at equilibrium = 1 - e + 0.5*(1 - e) + e + 2 = (7 - e)/2
// Mole fractions:
// ySO2_eqb = 2*(1 - e)/(7 - e)
// yO2_eqb = (1 - e)/(7 - e)
// ySO3_eqb = 2*e/(7 - e)
// yAr_eqb = 4/(7 - e)
// Sum of Stoichiometric Coeffecient:
v = 1 - 1 - 1/2;
Ky = K*P^(-v);
e = 0.8;
err = 1;
while err > 0.2
    Ky_new = (2*e/(7 - e))/(((2*(1 - e))/(7 - e))*(((1 - e)/(7 - e))^0.5));
    err = abs(Ky - Ky_new);
    Ky = Ky_new;
    e = e + 0.001;
end
printf("Degree of Conversion is %.3f\n",e);
ySO2_eqb = 2*(1 - e)/(7 - e);
yO2_eqb = (1 - e)/(7 - e);
ySO3_eqb = 2*e/(7 - e);
yAr_eqb = 4/(7 - e);
printf("Equilibrium Composition of the reaction Mixture\n");
printf("ySO2 = %.4f\n",ySO2_eqb);
printf("yO2 = %.4f\n",yO2_eqb);
printf("ySO3 = %.4f\n",ySO3_eqb);
printf("yAr = %.4f\n",yAr_eqb)