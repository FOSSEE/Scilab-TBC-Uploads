// Example 7_5
clc;funcprot(0);
// Given data
T=500;// °F
P=300;// psia
T_0=76;// °F

// Calculation
// From the superheated steam tables,
h=1257.5;// Btu/lbm
S=1.5701;// Btu/lbm.°R
E=h-((T_0+460)*S);// The exergy of steam in Btu/lbm
printf("\nThe exergy of steam,E=%3.1f Btu/lbm",E);
