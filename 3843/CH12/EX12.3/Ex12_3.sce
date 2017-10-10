// Example 12_3
clc;funcprot(0);
// Given data
// The volumetric analysis of the products on dry basis
CO_2=11.0// %
CO=1.0;// %
O_2=3.5;// %
N_2=84.5;// %

// Calculation
// The chemical equation is aC_4H_10+b(O_2+3.76N_2)-->11CO_2+1CO+3.5O_2+84.5N_2+cH_2O
// Balancing each element,
a=(11+1)/4;// (C)
c=(10*a)/2;// (H)
b=(22+1+7+c)/2;// (O)
printf("\nDividing through the chemical equation by the value of a so that we hve 1 mol fuel is %1.0fC_4H_10+%1.1f(O_2+3.76N_2)-->%1.2fCO_2+%0.2fCO+%1.2fO_2+%2.2fN_2+%1.0fH_2O",a/a,b/a,11/a,1/a,3.5/a,84.5/a,c/a);
// From example 12.1
b_1=6.5;// The stoichiometric coefficient
P_ta=((b/a)/(b_1))*100;// The percent theoretical air in %
printf("\nThe percent theoretical air=%3.1f percentage",P_ta);
