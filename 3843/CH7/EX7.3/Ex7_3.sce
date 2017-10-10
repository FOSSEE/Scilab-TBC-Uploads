// Example 7_3
clc;funcprot(0);
// Given data
m_CO2=0.1;// lbm of CO_2
m_N2=0.1;// lbm of N_2
T_0=77+460;// °R
P=30;// psia
P_0=14.7;// psia
T=440;// °F
R=1.986;// Btu/lbmol-°R

// Calculation
// Use table F-4E,for CO_2
h=7597.6;// Btu/lbmol
h_0=4030.2;// Btu/lbmol
phi=56.070;// Btu/lbmol-°R
phi_0=51.032;// Btu/lbmol-°R
X_CO2=(m_CO2/44)*[(h-h_0)-(T_0*((phi-phi_0)-(R*log(P/P_0))))];// The availability of CO_2 in Btu
printf("\nThe availability of CO_2,X=%1.2f Btu",X_CO2);
// Use table F-4E,for N_2
h=6268.1;// Btu/lbmol
h_0=3279.5;// Btu/lbmol
phi=49.352;// Btu/lbmol-°R
phi_0=45.743;// Btu/lbmol-°R
X_N2=(m_N2/28)*[(h-h_0)-(T_0*((phi-phi_0)-(R*log(P/P_0))))];// The availability of N_2 in Btu
printf("\nThe availability of N_2,X=%1.2f Btu",X_N2);
