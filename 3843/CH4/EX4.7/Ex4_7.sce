// Example 4_7
clc;funcprot(0);
// Given data
T=800;// °F
P=800;// psia

// Calculation
// To determine c_p we use finite difference approximation.We use entries at T=900 °F and T=700 °F
// From table C-3E
T_2=700;// °F
T_1=900;// °F
h_1=1455.6;// Btu/lbm
h_2=1338.0;// Btu/lbm
delh=h_1-h_2;// Btu/lbm
delT=T_1-T_2;// °F
c_p=delh/delT;// Btu/lbm-°F
printf("\n The value of c_p is %0.3f Btu/lbm-°F.",c_p);
