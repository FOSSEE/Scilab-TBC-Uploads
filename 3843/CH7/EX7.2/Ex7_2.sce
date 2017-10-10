// Example 7_2
clc;funcprot(0);
// Given data
P_1=15;// The pressure at inlet in psia
P_2=75;// The pressure at exhaust in psia
T_1=80;// The temperature at inlet in °F
T_2=440;// The temperature at exhaust in °F
T_0=537;// °F
R=53.3/778;// Btu/lbmol.°R

// Calculation
// Using values from air tables
phi_1=0.60078;// Btu/lbmol.°R
phi_2=0.72438;// Btu/lbmol.°R
ds=(phi_2-phi_1)-((R)*log(P_2/P_1));// The entropy change in Btu/lbm.°R
i=T_0*ds;// The irreversibility in Btu/lbm
printf("\nThe irreversibility,i=%1.2f Btu/lbm",i);
