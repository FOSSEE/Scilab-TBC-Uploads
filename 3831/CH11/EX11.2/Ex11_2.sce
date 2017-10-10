// Example 11_2
clc;funcprot(0);
// Given data
p=200;// psia
T=400;// °F

// Solution
// From Table C.3a in Thermodynamic Tables to accompany Modern Engineering Thermodynamics, we find that, at this state,
u=1123.5;// Btu/lbm
h=1210.8;// Btu/lbm
s=1.5602;// Btu/lbm.R
f=u-((T+459.67)*s);// Btu/lbm
g=h-((T+459.67)*s);// Btu/lbm
printf("\nThe value of the specific Helmholtz function for superheated water vapor,f=%3.0f Btu/lbm \nThe value of the specific Gibbs function for superheated water vapor,g=%3.0f Btu/lbm",f,g);
